# Operatoren (Petkovic)
Folgende Operatoren werden von PostgreSQL zur Interaktion mit JSON zur Verfügung gestellt werden:

| Operator | Operatortyp | Beschreibung | Rückgabetyp |verkettet verwendbar|
|---|---|---|---|---|
|->  | int, string | Zugriff auf Child über Namen oder Index: | JSON | ja |
| ->>| int, string | Zugriff auf Child über Namen oder Index: | string| nein |
| #>| int, string | Auswahl eines Elements anhand seines Pfades innerhalb des JSON-Hauptobjekts. Der Pfad kann aus Elementnamen und Array-Indizes bestehen | JSON| ja|
| #>>| int, string | | string| nein|

# Copy Befehl
