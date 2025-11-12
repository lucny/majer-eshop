# Majer E-shop - AI Agent Instructions

## Project Overview
Educational database design project demonstrating **database normalization** (1NF → 2NF → 3NF) for a fictional Czech e-shop. Students progressively transform a denormalized CSV table into a fully normalized relational database with proper ER diagrams.

## Core Purpose
This is a **teaching tool** for database normalization concepts - not a production e-shop. All content (data, documentation) is in **Czech language** for educational purposes.

## Project Structure

### Key Files & Directories
- `csv/*.csv` - Step-by-step normalization examples (unnormalized → 1NF → 2NF → 3NF)
- `exports/majer_eshop.sql` - Final normalized MySQL schema (3NF)
- `scripts/faker_data.py` - Demo data generator using Faker library (Czech locale)
- `scripts/majer_eshop_demo_data.sql` - Generated INSERT statements for demo data
- `scripts/webscraper.py` - IMDb Top 250 web scraper example (BeautifulSoup4)
- `README.md` - Complete educational curriculum with exercises and explanations

### Database Schema (3NF)
Final normalized structure with 9 tables:
- **Entities**: `zakaznici`, `adresy`, `mesto`, `produkty`, `kategorie_produktu`, `dodavatele`, `objednavky`, `zpusoby_platby`
- **Junction**: `polozky_objednavky` (composite PK: id_objednavky + id_produktu)

Key relationships:
- Customers → Addresses → Cities (chain of 1:N)
- Products → Categories, Products → Suppliers (both reference Cities)
- Orders → Customers, Orders → Payment Methods
- Order Items connects Orders ↔ Products (M:N)

## Development Practices

### Language & Naming Conventions
- **All database identifiers in Czech**: `id_zakaznika`, `pocet_kusu`, `zpusoby_platby`
- **Python code**: English variables/functions with Czech comments
- **Documentation**: Czech (README, CSV headers) for target student audience

### Data Generation Pattern
When generating demo data (`faker_data.py`):
1. Use `Faker("cs_CZ")` for Czech locale
2. Set `random.seed(42)` for reproducibility
3. Generate data top-down respecting FK constraints (cities → addresses → customers)
4. Output as raw SQL INSERT statements (no ORM)

### Web Scraping Example
`webscraper.py` demonstrates:
- `requests` + `BeautifulSoup4` for HTML parsing
- User-Agent headers to avoid blocking
- CSS selector patterns for IMDb structure
- Nested scraping (list page → detail pages)
- JSON output with `ensure_ascii=False` for Czech characters

## Critical Patterns

### Database Design Principles
This project teaches through **anti-patterns** → **solutions**:
- **Original problem**: Repeating customer data, multi-valued fields (phone numbers, genres)
- **1NF fix**: Atomicity - split multi-valued attributes into separate rows/tables
- **2NF fix**: Partial dependencies - extract entities that depend on part of composite key
- **3NF fix**: Transitive dependencies - separate "city" from "supplier" into `mesto` table

### CSV Evolution Trail
Track normalization progress through files:
- `objednavky_nenormalizovane.csv` → Original denormalized data
- `1NF_*.csv` → Atomic values only
- `2NF_*.csv` → Separate entities (products, customers, orders)
- `3NF_*.csv` → Final form with `mesto` table extracted

## Python Environment

### Dependencies
- `faker` - Generate Czech demo data
- `requests` + `beautifulsoup4` - Web scraping
- `json` - Data serialization (built-in)

### Running Scripts
```powershell
# Generate demo SQL data
python scripts/faker_data.py

# Scrape IMDb Top 250
python scripts/webscraper.py
```

## SQL Conventions
- MySQL syntax (backticks for identifiers)
- `varchar(255)` for strings, `int` for IDs/numbers
- Foreign keys added via separate `ALTER TABLE` statements
- Czech comments: `COMMENT = 'Primární klíč může být složený'`

## Educational Context

### Target Audience
Czech high school/university students learning database design. When suggesting changes:
- Explain normalization concepts in **simple terms**
- Reference specific CSV files showing progression
- Use Czech terminology for database concepts
- Link to README sections for context

### Common Student Questions
README addresses:
- Why normalize? (redundancy, anomalies, maintainability)
- How to identify dependencies? (functional dependency analysis)
- Tools for ER diagrams: **dbdiagram.io** recommended (DBML syntax examples provided)
- Advanced normalization: Address structure, payment methods as separate tables

## Testing & Validation
No automated tests - validation is manual:
1. Check CSV files follow normalization rules
2. Verify SQL schema matches ER diagram
3. Test demo data loads without FK violations
4. Ensure web scraper output is valid JSON

## DO NOT
- ❌ Translate database identifiers to English
- ❌ Add production features (authentication, API, frontend)
- ❌ Over-engineer demo scripts (no async, no ORM)
- ❌ Remove educational comments from code
- ❌ Modify normalization examples without README updates
