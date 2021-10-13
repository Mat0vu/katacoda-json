JSON steht für *Java Script Object Notation* und ist ein flexibles und programmiersprachenunabhängiges Format zur Speicherung von Daten. Aufgrund der Tatsache, dass JSON sowohl von Maschinen als auch Menschen gut verstanden werden kann, ist JSON in der heutigen Zeit weit verbreitet. Insbesondere in der Web-Entwicklung wird JSON oft eingesetzt, um Informationen über das Internet auszutauschen [1].

# Struktur
An einem Beispiel soll die Struktur eines JSON-Objekts erklärt werden.
```
{
  "mitarbeiter": {
    "vorname": "Max",
    "nachname": "Mustermann",
    "qualifikationen": [
      "Data Warehouse",
      "Sicherheit"
    ]
  }
}
```
*mitarbeiter* ist ein Objekt. *vorname* und *nachname* sind beides Eigenschaften, die wiederum immer aus Schlüsseln (Keys) und einem zugehörigen  Wert (Value) bestehen. <br>
*qualifikationen* ist ein Array, in dem mehrere Werte, oder auch wieder verschachtelte Objekte abgelegt werden können [1].


# Nutzen
Warum möchte man Daten in relationalen Datenbanken überhaupt im JSON-Format speichern?

In relationalen Datenbankmanagementsystemen muss vor der Speicherung von Daten das Datenbankschema vorgegeben werden. Damit wird festgelegt, wie viele Spalten in den Tabellen zur Verfügung stehen sollen und welche Datentypen darin gespeichert werden.
Dieses traditionelle Konzept der relationen DBMS, das in den letzten 25 Jahren sehr weit verbreitet war, ist heutzutage nicht mehr für alle Anforderungen sinnvoll, weshalb immer mehr andere DBMS eingesetzt werden [2].

Dokumentenorientierte Datenbankmanagementsysteme unterstützen als beispielhafte Vertreter der No-SQL-Datenbanken JSON nativ und profitieren von der flexiblen Speicherung von Daten. Hier spricht man auch von *Schema-on-read*, das die Speicherung von Daten ermöglicht, ohne vorher ein Schema festgelegt zu haben. 

Relationale DBMS speichern die Daten traditionell in vordefinierten Strukturen ab [3]. Hier spricht man auch von *Schema-on-write*.

Die Unterschiede können folgendermaßen zusammgefasst werden [4]:

| Schema-on-read                                           | Schema-on-write                                |
| -------------------------------------------------------- | ---------------------------------------------- |
| Schema wird beim Lesen der Daten angewandt               | Schema wird beim Schreiben der Daten angewandt |
| Keine Datenstruktur notwendig                            | Vorige Definition des Schemas notwendig        |
| langsames Lesen, schnelles Schreiben                     | schnelles Lesen, langsames Schreiben           |
| schwierige Sicherstellung der Datenqualität              | Datenqualität einfacher sicherzustellen        |
| Einfaches Einfügen von Daten, hoher Aufwand bei Abfragen | Einfaches Auslesen der Daten                   |


Viele moderne relationale Datenbankmanagementsysteme unterstützen mittlerweile auch das Speichern von Daten im JSON-Format und ermöglichen dadurch die Mischung von strukturierten und unstrukturierten Daten [5].

PostgreSQL, das hier als Beispiel verwendet wird, unterstützt dies seit Version 9.2. In Version 9.3 wurde die Funktionsweise nochmal weiterentwickelt [6].