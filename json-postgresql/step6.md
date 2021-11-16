# Indizes
Allgemein werden Indizes für die Performance-Steigerung von Abfragen eingesetzt.
PostgreSQL unterstützt das Anlegen von Indizes für *jsonb* Typen.
Dieser Index ermöglicht das effiziente Suchen von bestimmten Key-Value Paaren, die mit dem *jsonb*-Datentyp gespeichert werden.
Indizes können sowohl über die ganze Spalte vom Typ JSON erstellt werden, als auch über ein bestimmtes Element innerhalb des JSON. Dies kann sinnvoll sein, wenn beispielsweise innerhalb des JSONs oft nach einem bestimmten Attribut gefiltert wird [7].

Ein Performance-Gewinn macht sich erst bei größeren Datenmengen bemerkbar, doch ein kleiner Test zeigt, dass folgende Abfrage nach Anlegen eines Indizes schneller abläuft: 

```
EXPLAIN SELECT infos->'zutaten' as zutaten 
FROM Rezepte;
```{{execute T1}}

Jetzt wird der Index angelegt
```
CREATE INDEX ON Rezepte((infos->>'zutaten'));
```{{execute T1}}

Nochmal die gleiche Abfrage:
```
EXPLAIN SELECT infos->'zutaten' as zutaten 
FROM Rezepte;
```{{execute T1}}
Die Kosten für die Anfrage sind jetzt geringer.

# Veröffentlichen von Daten
PostgreSQL ermöglicht ebenfalls das Veröffentlichen relationaler Daten im JSON Format. Hierbei werden die gewünschten Spalten einem Key zugeordnet und als JSON-Objekt ausgegeben. Die Struktur des Outputs kann allerdings nicht beeinflusst werden [7]:

```
\copy (SELECT row_to_json(row(id,name,infos)) FROM Rezepte) TO '/home/json_export';
```{{execute T1}}
Dieser Befehl exportiert das JSON als Textdatei an den gewünschten Pfad.

Die Datei kann so betrachtet werden:
```
exit
cat /home/json_export
```{{execute T1}}