# Beispiel
An Beispielen wird nun die Speicherung und Abfrage von JSON Daten in PostgreSQL demonstriert.
Ein Restaurant möchte in einer Datenbank verschiedene Gerichte mit den zugehörigen Zutaten und deren Mengenangaben abspeichern. 
Da die Rezepte unterschiedliche Anzahlen an Zutaten und unterschiedliche Maßeinheiten haben, wäre es nicht möglich, dieses in einem Schema im Voraus festzulegen.
Hier kann die Verwendung von dem Datentyp *jsonb* helfen.

```
CREATE TABLE IF NOT EXISTS Rezepte (id INTEGER, 
name VARCHAR(255) NOT NULL,
preis DECIMAL(9,2) NOT NULL,
infos jsonb,
Primary Key(id));
```{{execute T1}}

```
INSERT INTO Rezepte VALUES (1, 'Teig', 5.50, '{
  "zutaten": {
    "mehl": {
      "art": "weizen",
      "menge": 500,
      "einheit": "g"
    },
    "wasser": {
      "menge": 500,
      "einheit": "ml"
    },
    "eier": {
      "menge": 6
    },
    "salz": {
      "menge": 10,
      "einheit": "g"
    }
  },
  "kommentare":{
      
  }
}'); 
```{{execute T1}}

```
INSERT INTO Rezepte VALUES (2, 'Soße', 7.80, '{
  "zutaten": {
    "wasser": {
      "menge": 2,
      "einheit": "l"
    },
    "sahne": {
      "menge": 100,
      "einheit": "ml"
    },
    "mehl": {
      "art": "weizen",
      "menge": 500,
      "einheit": "g"
    },
    "salz": {
      "menge": 5,
      "einheit": "g"
    }
  },
  "kommentare":{

  }
}'); 
```{{execute T1}}


```
SELECT infos->'zutaten' as Zutaten FROM Rezepte;
```{{execute T1}}

## weitere Informationen einfügen
Es können nun problemlos weitere Informationen hinzugefügt werden wie beispielsweise Rückmeldungen der Kunden oder ähnliches.
```
update rezepte 
set infos = jsonb_insert(infos, '{kommentare, kunde1}', '"sehr lecker"')
where id=1;
```{{execute T1}}