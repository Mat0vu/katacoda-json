In PostgreSQL stehen zwei verschiedene Datentypen zur Verfügung, um Daten im JSON-Format zu speichern.

## JSON
Bei Verwendung des Datentyps *json* wird sichergestellt, dass es sich um ein valides JSON-Objekt handelt. Daraufhin wird eine genaue Kopie der Eingabe gespeichert. 
Das bedeutet, dass die Einrückungen und damit alle Leerzeichen beibehalten werden. Deshalb müssen Funktionen die Daten bei jeder Ausführung neu Parsen.
Wenn ein JSON-Objekt denselben Schlüssel mehr als einmal enthält, werden alle Schlüssel/Wert-Paare beibehalten. Außerdem wird die Ordnung der Schlüssel beibehalten [6]. 


## JSONB
*jsonb* Daten werden binär abgespeichert und beinhalten somit weder die Leerzeichen noch die Ordnung von Schlüsseln, noch ob es Duplikate derselben gibt. If duplicate keys are specified in the input, only the last value is kept. 
Während der Import die Konvertierung etwas verlangsamt, wird die Verarbeitung der Daten beschleunigt, da im Gegensatz zu *json* kein wiederholtes Parsen notwendig ist. Dadurch wird die Speicherung ebenfalls effizienter. *jsonb* unterstützt ebenfalls das Anlegen eines Indexes [6].

## Fazit
Im Normalfall ist die Verwendung von *jsonb* zu empfehlen [6].