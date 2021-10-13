# Indizes
Allgemein werden Indizes für die Performance-Steigerung von Abfragen eingesetzt.
PostgreSQL unterstützt das Anlegen von Indizes für *jsonb* Typen.
Dieser Index ermöglicht das effiziente Suchen von bestimmten Key-Value Paaren, die mit dem *jsonb*-Datentyp gespeichert werden.
Indizes können sowohl über die ganze Spalte vom Typ JSON erstellt werden, als auch über ein bestimmtes Element innerhalb des JSON. Dies kann sinnvoll sein, wenn beispielsweise innerhalb des JSONs oft nach einem bestimmten Attribut gefiltert wird [7].
```
CREATE INDEX ON Rezepte((infos->>'zutaten'));
```{{exectute T1}}


# Veröffentlichen von Daten
PostgreSQL ermöglicht ebenfalls das Veröffentlichen relationaler Daten im JSON Format. Hierbei werden die gewünschten Spalten einem Key zugeordnet und als JSON-Objekt ausgegeben. Die Struktur des Outputs kann allerdings nicht beeinflusst werden [7]:

```
SELECT row_to_json(row(id,name,infos)) 
FROM Rezepte;
```{{execute T1}}
