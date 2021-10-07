# JSON vs JSONB (psql docu)
In PostgreSQL stehen zwei verschiedene Datentypen zur Verfügung, um Daten im JSON-Format zu speichern.

## JSON (doku)
Bei Verwendung des Datentyps *json* wird eine genaue Kopie der Eingabe gespeichert. 
Es wird sichergestellt, dass es sich um ein valides JSON-Objekt handelt.
Die Einrückungen und damit alle Leerzeichen werden beibehalten. Deshalb müssen Funktionen die Daten bei jeder Ausführung neu Parsen.
Duplikate werden nicht erkannt (The processing functions consider the last value as the operative one.) 


it will preserve the order of keys within JSON objects. Also, if a JSON object within the value contains the same key more than once, all the key/value pairs are kept. 

## JSONB (doku)
*jsonb* Daten werden binär abgespeichert und behält somit weder die Leerzeichen noch die Ordnung von Schlüsseln, noch ob es Duplikate  derselben gibt. If duplicate keys are specified in the input, only the last value is kept. 
Während der Import die Konvertierung etwas verlangsamt, wird die Verarbeitung der Daten beschleunigt, da im Gegensatz zu *json* kein wiederholtes Parsen notwendig ist. Dadurch wird die Speicherung ebenfalls effizienter. *jsonb* unterstützt ebenfalls indexing, which can be a significant advantage.

## Fazit (auch doku)
Im Normalfall ist die Verwendung von *jsonb* zu empfehlen
In general, most applications should prefer to store JSON data as *jsonb*, unless there are quite specialized needs, such as legacy assumptions about ordering of object keys.