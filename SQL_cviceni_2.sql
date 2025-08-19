/* Lekce 2 - podmínky WHERE, GROUP BY, analytické zadání */

/* Úkol 1 - Každou podmínku (1. 2. a 3.) v následujícím SQL dotazu zkuste napsat jiným způsobem, 
tak aby funkce SQL dotazu zůstala nezměněna. 
Například: productID != 1 lze také zapsat jako productID <> 1

SELECT 
   zip, 
   state, 
   region
FROM 
   country
WHERE 
   -- 1. podminka
   -- (region LIKE '%t' AND region LIKE '____')
   region LIKE '___t'
   -- 2. podminka 
   -- AND (state = 'OH' OR state = 'PA' OR state = 'NM')
   AND state IN ('OH', 'PA', 'NM')
   -- 3. podminka
   -- AND (zip BETWEEN 45880 AND 87050)
   AND zip >= 45880 AND zip <= 87050

  */
  
/* Úkol 2 -  Určete dotaz SQL, který z tabulky sales vybere průměrné hodnoty výnosu (revenue) a jednotek (units) pro každý 
produkt s ID vyšším než 500,   seřadí výsledky sestupně podle průměrného výnosu a omezí výstup 
jen na prvních 10 výsledků.
  
  SELECT
  AVG(revenue),
  AVG(units),
  productId
FROM
  sales
WHERE 
  productid > 500
GROUP BY
  productId
ORDER BY
  AVG(revenue) DESC
LIMIT 
  10
  */
  
/* Úkol 3 Jaká je průměrná cena nabízených produktů v jednotlivých kategoriích?

SELECT
  AVG(pricenew),
  category
FROM
  product
GROUP BY
  category */
  
/* Úkol 4 - Kolik unikátních produktů bylo prodáno v prvním a druhém měsíci roku 2014? 

SELECT 
  COUNT(DISTINCT productid),
  strftime('%m', date)
FROM
  sales
WHERE
  strftime('%m', date) IN ('01', '02')
  AND strftime('%Y', date) = '2014'
GROUP BY
  strftime('%m', date) */
  
  