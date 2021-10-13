PostgreSQL ermöglicht ebenfalls das Veröffentlichen relationaler Daten im JSON Format. Hierbei werden die gewünschten Spalten als JSON ausgegeben, allerdings kann die Struktur des Outputs nicht beeinflusst werden [7]:

```
SELECT row_to_json(row(id,name,infos)) 
FROM Rezepte;
```{{execute T1}}
