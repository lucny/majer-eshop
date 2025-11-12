# https://realpython.com/beautiful-soup-web-scraper-python/
# Modul requests (pip install requests)
import requests
# Import knihovny BeautifulSoup4 (pip install beautifulsoup4), která usnadňuje web scraping
from bs4 import BeautifulSoup
# Import Selenium pro simulaci prohlížeče (pip install selenium)
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time

# Konstanta obsahující adresu webu, z něhož chceme získávat data
# Žebříček 250 nejlépe hodnocených filmů podle serveru imdb.com
URL = 'https://www.imdb.com/chart/top'

# Nastavení Selenium WebDriver
chrome_options = Options()
chrome_options.add_argument('--headless')  # Spuštění bez zobrazení okna prohlížeče
chrome_options.add_argument('--no-sandbox')
chrome_options.add_argument('--disable-dev-shm-usage')
chrome_options.add_argument('user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36')

# Inicializace WebDriver
driver = webdriver.Chrome(options=chrome_options)

try:
    # Načtení stránky
    driver.get(URL)
    
    # Počkáme na načtení všech položek (IMDb může načítat postupně)
    time.sleep(3)  # Základní čekání na načtení
    
    # Scrollování dolů pro načtení všech položek
    last_height = driver.execute_script("return document.body.scrollHeight")
    while True:
        # Scrollujeme dolů
        driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
        time.sleep(2)  # Počkáme na načtení
        
        # Zjistíme novou výšku stránky
        new_height = driver.execute_script("return document.body.scrollHeight")
        if new_height == last_height:
            break  # Pokud se výška nezměnila, jsme na konci
        last_height = new_height
    
    # Získání HTML obsahu po načtení všech dat
    page_content = driver.page_source
    soup = BeautifulSoup(page_content, 'html.parser')
    
finally:
    # Zavření prohlížeče
    driver.quit()
# Získání názvů filmů
titles = [tag.text.split('. ')[1] for tag in soup.select('.ipc-metadata-list-summary-item h3.ipc-title__text')]
print(f"Načteno {len(titles)} filmů")
# print(titles)
# Získání roků vzniku filmů
years = [tag.text for tag in soup.select('.ipc-metadata-list-summary-item .cli-title-metadata>.cli-title-metadata-item:nth-child(1)')]
# print(years)
lengths = [tag.text for tag in soup.select('.ipc-metadata-list-summary-item .cli-title-metadata>.cli-title-metadata-item:nth-child(2)')]
# print(lengths)
ratings = [tag.text for tag in soup.select('.ipc-metadata-list-summary-item .ipc-rating-star--rating')]
# print(ratings)
# Odkazy na detaily filmů
urls = [f'https://www.imdb.com{tag["href"]}' for tag in soup.select('.ipc-metadata-list-summary-item a.ipc-title-link-wrapper')]
# print(urls)
# Kontrolní výpis získaných údajů

data = []

for i in range(0, len(titles)):
    detail_page = requests.get(urls[i], headers={'User-agent': 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36'})
    dsoup = BeautifulSoup(detail_page.content, 'html.parser')
    content = dsoup.select('[data-testid=plot]>span[data-testid=plot-xs_to_m]')
    print(f'{i + 1};{titles[i]};{years[i]};{ratings[i]};"{urls[i]}";{content[0].text}')
    data.append({
        "rank": i + 1,
        "title": titles[i],
        "year": years[i],
        "rating": ratings[i],
        "url": urls[i],
        "plot": content[0].text
    })  
    
# Uložení dat do JSON souboru
import json
with open("imdb_top_250.json", "w", encoding="utf-8") as f:
    json.dump(data, f, ensure_ascii=False, indent=4)