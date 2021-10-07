# Was ist JSON?
JSON steht für Java Script Object Notation und ist ein Format zu Datenspeicherung. Das Format basiert auf den Datentypen der Programmiersprache JavaScript, die im Namen enthalten ist. Aufgrund der Tatsache, dass JSON sowohl von Maschinen als auch Menschen gut verstanden werden kann, ist JSON in der heutigen Zeit weit verbreitet. Insbesondere in der Web-Entwicklung wird JSON oft eingesetzt, um Informationen über das Internet auszutauschen. (Felipe Pezoa)
Auch bei der Datenspeicherung wird das JSON-Format aufgrund seiner flexiblen Struktur eingesetzt. Während beispielsweise dokumentenorientierte Datenbankmanagementsysteme JSON nativ unterstützen und damit von dem flexiblen und an die objektorientierte Programmierung angepasstes Model profitieren, speichern relationale Datenbanken die Daten traditionell in vordefinierten Strukturen ab (Craug Chasseur).
Viele moderne relationale Datenbankmanagementsysteme unterstützen mittlerweile aber auch das Speichern von Daten im JSON-Format.
PostgreSQL, das hier als Beispiel verwendet wird, unterstützt dies seit Version 9.2. In Version 9.3 wurde die Funktionsweise nochmal weiterentwickelt. (Petkovic) 

--> neue Datenformat und seine zusätzlichen Funktionen und Operatoren

    Neues Datenformat: json
    Neue Operatoren: ->, ->>, #> and #>>
    Neue Funktionen: json_array_length, json_extract_path, json_array_elements und viele mehr
https://datavirtuality.de/blog-json-datenformat-in-postgresql-verwenden/

# Nutzen
Warum will man überhaupt JSON-Daten in relationalen Datenbanken speichern?

In relationalen Datenbankmanagementsystemen muss bevor die Daten gespeichert werden können am Anfang vorgegeben werden, wie viele Spalten in einer Tabelle zur Verfügung stehen sollen  (Datenbankschema). Dies ist für Daten, die nicht immer einem bestimmten Schema folgen, nicht sehr sinnvoll. Dazu gehören beispielsweise Dokumente oder E-Mails.
No-SQL Datenbanken ermöglichen das Speichern von Daten, ohne vorher ein bestimmtes Schema deklariert zu haben. 
Der Vorteil bei der Speicherung von Daten im JSON-Format in relationalen Datenbanken ist der Mix zwischen strukturierten und unstrukturierten Daten. (Liu et al)