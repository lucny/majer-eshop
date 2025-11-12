# Jednodušší alternativa bez Selenium - načítá pouze dostupných 25-50 filmů
# Používá pouze requests a BeautifulSoup4
import requests
from bs4 import BeautifulSoup
import json

URL = 'https://www.imdb.com/chart/top'

# POZNÁMKA: IMDb dynamicky načítá data pomocí JavaScriptu
# Tento skript načte pouze prvních ~25-50 filmů, které jsou přímo v HTML
# Pro načtení všech 250 filmů použijte webscraper.py se Selenium

page = requests.get(URL, headers={
    'User-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
})

soup = BeautifulSoup(page.content, 'html.parser')

titles = [tag.text.split('. ')[1] for tag in soup.select('.ipc-metadata-list-summary-item h3.ipc-title__text')]
years = [tag.text for tag in soup.select('.ipc-metadata-list-summary-item .cli-title-metadata>.cli-title-metadata-item:nth-child(1)')]
ratings = [tag.text for tag in soup.select('.ipc-metadata-list-summary-item .ipc-rating-star--rating')]
urls = [f'https://www.imdb.com{tag["href"]}' for tag in soup.select('.ipc-metadata-list-summary-item a.ipc-title-link-wrapper')]

print(f"⚠️  UPOZORNĚNÍ: Načteno pouze {len(titles)} filmů (místo 250)")
print("Pro načtení všech 250 filmů použijte webscraper.py se Selenium\n")

data = []

for i in range(0, len(titles)):
    detail_page = requests.get(urls[i], headers={
        'User-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
    })
    dsoup = BeautifulSoup(detail_page.content, 'html.parser')
    content = dsoup.select('[data-testid=plot]>span[data-testid=plot-xs_to_m]')
    
    print(f'{i + 1};{titles[i]};{years[i]};{ratings[i]};"{urls[i]}"')
    
    data.append({
        "rank": i + 1,
        "title": titles[i],
        "year": years[i],
        "rating": ratings[i],
        "url": urls[i],
        "plot": content[0].text if content else "N/A"
    })

# Uložení dat do JSON souboru
with open("imdb_top_partial.json", "w", encoding="utf-8") as f:
    json.dump(data, f, ensure_ascii=False, indent=4)

print(f"\n✓ Uloženo {len(data)} filmů do souboru imdb_top_partial.json")
