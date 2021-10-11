# Operatoren (Petkovic)
PostgreSQL stellt mehrere Operatoren zur Verfügung, die mit JSON verwendet werden können 

->, ->>, #> und #>>

| Operator | Operatortyp | Beschreibung | Rückgabetyp |verkettet verwendbar|
|---|---|---|---|---|
|->  | int, string | Zugriff auf Child über Namen oder Index: | JSON | ja |
| ->>| int, string | Zugriff auf Child über Namen oder Index: | string| nein |
| #>| int, string | Auswahl eines Elements anhand seines Pfades innerhalb des JSON-Hauptobjekts. Der Pfad kann aus Elementnamen und Array-Indizes bestehen | JSON| ja|
| #>>| int, string | | string| nein|


# Index
PostgreSQL supports the GIN index for indexing JSON documents. GIN indexes belong to a class of function-based indexes, which can be used to efficiently search for keys or key/value pairs occurring within documents of the JSONB data type.
Example 12 CREATE INDEX idxgin ON postgres_json_table USING GIN (person_and_friends);
If the GIN index in the example above is created, queries containing the path/value-exists operator @> will make the use of the created index. (The @> operator is explained in Example 14.) (Petkovic)

# Abfragen
PostgreSQL supports test for containment, using the <@ operator.
`Example 15 SELECT id FROM postgres_json_table
WHERE person_and_friends @>' {”name”: “Jack”}';`