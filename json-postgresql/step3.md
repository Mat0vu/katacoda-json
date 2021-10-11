# Basics: Anlegen der Tabelle
Zuerst melden wir uns mit dem Standarduser `postgres` an dem Datenbankserver PostgreSQL an.

`psql -U postgres`{{execute T1}}

# Beispiel
An Beispielen wird nun die Speicherung und Abfrage von JSON Daten in PostgreSQL demonstriert.
Ein Restaurant möchte in einer Datenbank verschiedene Gerichte mit den zugehörigen Zutaten und deren Mengenangaben abspeichern. 
Da die Rezepte unterschiedliche Anzahlen an Zutaten und unterschiedliche Maßeinheiten haben, wäre es nicht möglich, dieses in einem Schema im Voraus festzulegen.
Hier kann die Verwendung von dem Datentyp *jsonb* helfen.

## Tabelle erstellen
```
CREATE TABLE IF NOT EXISTS Rezepte (id INTEGER, 
name VARCHAR(255) NOT NULL,
preis DECIMAL(9,2) NOT NULL,
infos jsonb,
Primary Key(id));
```{{execute T1}}