/* Lekce 5 - Views, CTE, CASE */

/* Úkol 1 - Vytvořte pohled (VIEW) s názvem CentralSalesView obsahující sloupce:
				productid,zip,units,revenue,state, region.
Data budou získána ze spojení tabulek sales a country podle sloupce Zip, přičemž 
vyberte pouze záznamy kde hodnota sloupce region je Central.

CREATE VIEW SalesCountryView AS
SELECT
  productid,
  s.zip,
  units,
  revenue,
  state,
  region
FROM
  sales s INNER JOIN country c ON s.Zip = c.Zip
WHERE
  region = 'Central' */
  
/* Úkol 2 - Použijte pohled CentralSalesView a zjistěte počet unikátních produktů prodaných 
v každém státě z centrálního regionu.

SELECT 
  COUNT(DISTINCT productid),
  state
FROM 
  SalesCountryView
GROUP BY
  state; */
  
/* Úkol 3 - Vyberte všechny prodeje z tabulky sales a přiřaďte jim kategorii velikosti balíku (packageSize) 
podle počtu prodaných kusů následovně:
LARGE – pokud prodej zahrnoval 15 kusů nebo více
MEDIUM – pokud podaný počet kusů byl mezi 14 a 5 (včetně)
SMALL – pokud prodej zahrnoval méně než 5 kusů.

SELECT 
  *,
  CASE
      WHEN units >= 15 THEN 'LARGE'
      WHEN units >= 5 THEN 'MEDIUM'
      ELSE 'SMALL'
  END AS packageSize
FROM 
  sales ;