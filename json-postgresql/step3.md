# Grundlegende Einrichtung
Nach diesem theoretischen Start wird jetzt an einigen Beispielen die Verwendung von JSON in PostgreSQL demonstriert. 

Zuerst melden wir uns mit dem Standarduser `postgres` an dem Datenbankserver PostgreSQL an.
`psql -U postgres`{{execute T1}}

# Einleitung: Beispiel
Ein Restaurant möchte in einer Datenbank verschiedene Gerichte mit den zugehörigen Zutaten und deren Mengenangaben abspeichern. Da die verschiedenen Rezepte unterschiedliche Anzahlen an Zutaten und diese auch unterschiedliche Mengen- und Maßeinheiten haben, wäre es sehr umständlich, dies in einem Schema im Voraus festzulegen.
Deshalb ist die Verwendung vom Datentyp *jsonb* hier sinnvoll.

## Tabelle erstellen
Zuerst wird die Tabelle für die Rezepte erstellt.
Diese enthält die Spalten *id*, *name*, *preis* und schließlich weitere *infos*, die im Typ *jsonb* abgespeichert werden.
```
CREATE TABLE IF NOT EXISTS Rezepte (id INTEGER, 
name VARCHAR(255) NOT NULL,
preis DECIMAL(9,2) NOT NULL,
infos jsonb,
Primary Key(id));
```{{execute T1}}