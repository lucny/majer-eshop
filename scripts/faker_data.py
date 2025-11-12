# Skript pro generování falešných dat pro e-shop a uložení jako SQL soubor
# Používá knihovnu Faker pro generování realistických dat v češtině. 
# Data zahrnují města, adresy, zákazníky, způsoby platby, kategorie produktů, dodavatele, produkty, objednávky a položky objednávek.
from faker import Faker
# random pro náhodný výběr a datetime pro generování náhodných dat
import random
# datetime pro generování náhodných dat
from datetime import datetime, timedelta

# Inicializace Faker a nastavení semínka pro reprodukovatelnost
fake = Faker("cs_CZ")
# Nastavení semínka pro náhodnost. To zajistí, že pokaždé, když spustíte skript, dostanete stejná data.
random.seed(42)

# Parametry počtů záznamů pro každou tabulku
NUM_MESTA = 10
NUM_ADRESY = 20
NUM_ZAKAZNICI = 20
NUM_ZPUSOBY_PLATBY = 3
NUM_KATEGORIE = 5
NUM_DODAVATELE = 5
NUM_PRODUKTY = 15
NUM_OBJEDNAVKY = 30
NUM_POLOZKY = 50

# Funkce pro generování náhodného data v rozmezí posledního roku
def random_date():
    # Generuje náhodné datum mezi dnešním dnem a předchozím rokem
    start = datetime.now() - timedelta(days=365)
    end = datetime.now()
    return fake.date_between(start_date=start, end_date=end).strftime('%Y-%m-%d')

# Generování dat pro každou tabulku
# Vytváříme seznamy n-tic, kde každá n-tice představuje jeden záznam v tabulce
mesto = [(i, fake.city()) for i in range(1, NUM_MESTA + 1)]

# Generování adres s odkazem na města (cizí klíč)
# Každá adresa obsahuje ulici, číslo popisné, PSČ a ID města
# Náhodně vybíráme město z již vygenerovaných měst, aby byla zachována referenční integrita. 
# Používáme náhodný výběr, protože některá města budou použita vícekrát.
# S ohledem na cizí klíče je důležité, aby ID měst odpovídala těm, která byla vytvořena v tabulce města.
adresy = [
    (i, fake.street_name(), str(fake.building_number()), fake.postcode(), random.choice(mesto)[0])
    for i in range(1, NUM_ADRESY + 1)
]

# Generování zákazníků s odkazem na adresy (cizí klíč)
# Každý zákazník má jméno, email a ID adresy
# Opět náhodně vybíráme adresu z již vygenerovaných adres.
zakaznici = [
    (f"ZK{i}", fake.name(), fake.email(), random.choice(adresy)[0])
    for i in range(1, NUM_ZAKAZNICI + 1)
]

# Pevně definované způsoby platby
# Každý způsob platby má ID a popis, který je pevně stanoven v seznamu
zpusoby_platby = [(i, p) for i, p in enumerate(["kartou", "dobírka", "převod"], start=1)]

# Generování kategorií produktů
# Každá kategorie má ID a název, který je generován pomocí Faker a upravován na první písmeno velké
kategorie = [(i, fake.word().capitalize()) for i in range(1, NUM_KATEGORIE + 1)]

# Generování dodavatelů s odkazem na města (cizí klíč)
# Každý dodavatel má ID, název a ID města
dodavatele = [
    (f"D{i}", fake.company(), random.choice(mesto)[0])
    for i in range(1, NUM_DODAVATELE + 1)
]

# Generování produktů s odkazy na kategorie a dodavatele (cizí klíče)
# Každý produkt má ID, název, cenu za kus, ID kategorie a ID dodavatele
produkty = [
    (f"P{i}", fake.word().capitalize(), random.randint(100, 5000),
     random.choice(kategorie)[0], random.choice(dodavatele)[0])
    for i in range(1, NUM_PRODUKTY + 1)
]

# Generování objednávek s odkazy na zákazníky a způsoby platby (cizí klíče)
# Každá objednávka má ID, datum, stav, ID zákazníka a ID způsobu platby
objednavky = [
    (i, random_date(), random.choice(["zpracovává se", "vyřízena", "zrušena"]),
     random.choice(zakaznici)[0], random.choice(zpusoby_platby)[0])
    for i in range(1, NUM_OBJEDNAVKY + 1)
]

# Generování položek objednávek s odkazy na objednávky a produkty (cizí klíče)
# Každá položka obsahuje ID objednávky, ID produktu a počet kusů
polozky = [
    (random.choice(objednavky)[0], random.choice(produkty)[0], random.randint(1, 5))
    for _ in range(NUM_POLOZKY)
]

# Generování SQL INSERT příkazů
# Ukládáme všechny SQL příkazy do jednoho seznamu řádků
sql_lines = []

# Funkce pro vložení řádků do SQL dumpu
def insert_lines(table, columns, values_list):
    # Přidání komentáře s názvem tabulky pro přehlednost
    sql_lines.append(f"-- {table}")
    # Generování INSERT příkazů pro každý záznam
    for values in values_list:
        # Formátování hodnot pro SQL (řetězce v uvozovkách), čísla bez uvozovek, atd.
        # Vytváříme řetězec hodnot pro SQL příkaz, kde řetězce jsou obaleny apostrofy a čísla jsou ponechána bez nich
        # Pomocí ternárního operátoru kontrolujeme typ každé hodnoty, zda je řetězec nebo číslo
        val_str = ", ".join(f"'{v}'" if isinstance(v, str) else str(v) for v in values)
        # Přidání SQL INSERT příkazu do seznamu řádků
        sql_lines.append(f"INSERT INTO {table} ({', '.join(columns)}) VALUES ({val_str});")
    # Přidání prázdného řádku pro oddělení tabulek
    sql_lines.append("")

# Vkládání dat do SQL dumpu pro každou tabulku
insert_lines("mesto", ["id_mesto", "nazev"], mesto)
insert_lines("adresy", ["id_adresy", "ulice", "cislo_popisne", "psc", "id_mesto"], adresy)
insert_lines("zakaznici", ["id_zakaznika", "jmeno", "email", "id_adresy"], zakaznici)
insert_lines("zpusoby_platby", ["id_zpusobu", "popis"], zpusoby_platby)
insert_lines("kategorie_produktu", ["id_kategorie", "nazev"], kategorie)
insert_lines("dodavatele", ["id_dodavatele", "nazev", "id_mesto"], dodavatele)
insert_lines("produkty", ["id_produktu", "nazev", "cena_za_kus", "id_kategorie", "id_dodavatele"], produkty)
insert_lines("objednavky", ["id_objednavky", "datum", "stav", "id_zakaznika", "id_zpusobu"], objednavky)
insert_lines("polozky_objednavky", ["id_objednavky", "id_produktu", "pocet_kusu"], polozky)

# Uložení jako SQL soubor
sql_dump_path = "majer_eshop_demo_data.sql"
with open(sql_dump_path, "w", encoding="utf-8") as f:
    f.write("\n".join(sql_lines))

sql_dump_path
