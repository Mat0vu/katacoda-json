# Anlegen der Tabelle
Zuerst starten wir melden wir uns mit dem Standarduser `postgres` an dem Datenbankserver PostgreSQL an.

`psql -U postgres`{{execute T1}}

## Tabelle erstellen
```
create table if not exists product (
  id              SERIAL,
  name            VARCHAR(100) NOT NULL,
  sku             CHAR(8)
);
```{{execute T1}}

## Eintragen
```INSERT INTO product (name) VALUES
('Endive'),
('Figs')
;
```{{execute T1}}
## Abfragen
```
SELECT * FROM product;
```{{execute T1}}
