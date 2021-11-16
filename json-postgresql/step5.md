# Operatoren
In der folgenden Tabelle werden die wichtigsten Operatoren, die von PostgreSQL zur Interaktion mit JSON zur Verfügung gestellt werden, dargestellt [7, 8]:

| Operator | Operatortyp | Beschreibung | Rückgabetyp |verkettet verwendbar|
|---|---|---|---|---|
|->  | int, string | Zugriff über Namen oder Index: | JSON | ja |
| ->>| int, string | Zugriff über Namen oder Index: | string| nein |
| #>| int, string | Zugriff über Angabe des Pfades, bestehend aus Elementnamen und Array-Indizes | JSON| ja|
| #>>| int, string |  Zugriff über Angabe des Pfades, bestehend aus Elementnamen und Array-Indizes| string| nein|

# Abfragen
Mithilfe der Operatoren lässt sich nun beispielsweise der *kommentare*-Array ausgeben:
```
SELECT name, infos->'kommentare' as kommentare 
FROM Rezepte;
```{{execute T1}}

Außerdem können die Zutaten aller Rezepte ausgeben werden:
```
SELECT infos->'zutaten' as zutaten 
FROM Rezepte;
```{{execute T1}}

Mit folgendem Befehl kann für alle Rezepte die Hauptzutat ausgelesen werden, also das 1. Element im Array der *zutaten*:
```
SELECT name, infos->'zutaten'->0 as hauptzutat
FROM Rezepte;
```{{execute T1}}

Folgende Abfrage benutzt einen anderen Operator, hat aber den selben Effekt. Mit diesem Operator kann der *Pfad* innerhalb des JSON-Objekts direkt angegeben werden:
```
SELECT name, infos#>'{zutaten,0}' as hauptzutat
FROM Rezepte;
```{{execute T1}}

Mit dem `@>` Operator kann überprüft werden, ob ein Element enthalten ist.
Mit dieser Abfrage werden alle Rezepte angezeigt, die Eier enthalten:
```
SELECT id, name 
FROM Rezepte WHERE infos @> '{"zutaten": [{"eier":{}}]}';
```{{execute T1}}

Anhand dieser Abfragen können auch eigene Abfragen selbst formuliert und in der Konsole getestet werden.