/* Lekce 3 - Joiny a agregace */

/* Úkol 1 - Který výrobce (zjistěte jméno) vyrábí nejvíce různých výrobků?

SELECT
  COUNT(productid) as pocetProduktu,
  manufacturer
FROM
  product JOIN manufacturer ON product.ManufacturerID = manufacturer.ManufacturerID
GROUP BY
  manufacturer
ORDER BY
  pocetProduktu DESC
LIMIT
1 */

/* Úkol 2 - Ve kterých státech se za rok 2015 celkově prodalo alespoň 10000 kusů produktů?

SELECT
  COUNT(units) AS totalUnits,
  state
FROM
  sales JOIN country ON sales.Zip = country.Zip
  WHERE
  strftime('%Y', date) = '2015'
GROUP BY
  state
HAVING
  totalUnits >= 10000
ORDER BY
totalUnits DESC */

/* Úkol 3 
Jaký je celkový výnos z prodeje za jednotlivé produkty.?

SELECT
  p.ProductID,
  SUM(revenue)
FROM 
  Product p LEFT JOIN sales s ON s.ProductID = p.ProductID
GROUP BY
  p.ProductID */
  
/* Úkol 4 - Kolik produktů se nikdy neprodalo?

SELECT
  COUNT(DISTINCT p.ProductId)
FROM
  Product p LEFT JOIN sales s ON s.ProductID = p.ProductID
WHERE 
   s.productid IS NULL; */