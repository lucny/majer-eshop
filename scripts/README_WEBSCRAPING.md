# Web Scraping - IMDb Top 250

## Problém s načítáním pouze 25 filmů

IMDb.com používá **lazy loading** (postupné načítání) obsahu pomocí JavaScriptu. Když použijete pouze `requests` a `BeautifulSoup`, získáte pouze prvních ~25-50 filmů, které jsou přímo v HTML kódu stránky.

## Řešení

### 1. Použití Selenium (doporučeno) ✅

Soubor: `webscraper.py`

Selenium simuluje reálný prohlížeč a může spouštět JavaScript, čímž načte všech 250 filmů.

**Instalace:**
```powershell
pip install selenium
```

**Spuštění:**
```powershell
python scripts/webscraper.py
```

### 2. Jednoduchá verze bez Selenium ⚠️

Soubor: `webscraper_simple.py`

Načítá pouze dostupných ~25-50 filmů pomocí requests/BeautifulSoup.

**Spuštění:**
```powershell
python scripts/webscraper_simple.py
```

## Technické vysvětlení

### Proč to nefunguje s requests?

```python
# requests.get() načte pouze statické HTML
page = requests.get(URL)
# ❌ V HTML je pouze 25-50 filmů, zbytek se načte JavaScriptem
```

### Jak to funguje se Selenium?

```python
# Selenium spustí reálný prohlížeč
driver = webdriver.Chrome()
driver.get(URL)

# Scrolluje dolů a počká na načtení
driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
time.sleep(2)

# ✅ Získá kompletní HTML se všemi 250 filmy
page_content = driver.page_source
```

## Poznámky pro studenty

- **Lazy loading** = postupné načítání obsahu při scrollování
- **JavaScript rendering** = obsah generovaný dynamicky v prohlížeči
- **Selenium** = nástroj pro automatizaci prohlížeče
- **requests** = jednoduchá knihovna pro HTTP požadavky (bez JavaScriptu)

## Výstupy

- `imdb_top_250.json` - Kompletní seznam (Selenium)
- `imdb_top_partial.json` - Částečný seznam (requests/BeautifulSoup)
