Nun werden zwei Einträge eingefügt: Einen **Teig** und eine **Soße**.

Beide enthalten in der *infos* Spalte weitere Daten im *jsonb* Format, die den Eintrag flexibel um weitere Informationen erweitert.
```
INSERT INTO Rezepte VALUES (1, 'Teig', 5.50, '{
  "zutaten": [
    {
      "mehl": {
        "art": "weizen",
        "menge": 500,
        "einheit": "g"
      }
    },
    {
      "wasser": {
        "menge": 500,
        "einheit": "ml"
      }
    },
    {
      "eier": {
        "menge": 6
      }
    },
    {
      "salz": {
        "menge": 10,
        "einheit": "g"
      }
    }
  ],
  "kommentare": []
}'); 
```{{execute T1}}

```
INSERT INTO Rezepte VALUES (2, 'Soße', 7.80, '{
  "zutaten": [
    {
      "wasser": {
        "menge": 2,
        "einheit": "l"
      }
    },
    {
      "sahne": {
        "menge": 100,
        "einheit": "ml"
      }
    },
    {
      "mehl": {
        "art": "weizen",
        "menge": 500,
        "einheit": "g"
      }
    },
    {
      "salz": {
        "menge": 5,
        "einheit": "g"
      }
    }
  ],
  "kommentare": []
}'); 
```{{execute T1}}

## Einfügen weiterer Informationen
Aufgrund des schemalosen Prinzips können in der *infos*-Spalte nun problemlos weitere Informationen zu den Rezepten hinzugefügt werden, wie beispielsweise Rückmeldungen der Kunden oder ähnliches:
```
update rezepte 
set infos = jsonb_insert(infos, '{kommentare, 0}', '"sehr lecker"')
where id=1;
```{{execute T1}}