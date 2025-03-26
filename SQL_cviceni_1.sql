/* Lekce 1 - SELECT, LIMIT, DISTNICT, ORDER BY, WHERE

Úkol 1 - Vyberte jedinečné regiony (region) z tabulky country (tak, aby tam žádný region nebyl víckrát) a 
zobrazte pouze první záznam.
SELECT
  DISTINCT region
FROM
  country
LIMIT
  1 */
  
/* Úkol 2 -Vyberte všechny sloupce tabulky sales (date, zip, revenue) a seřaďte výsledky sestupně 
dle výše výnosu (revenue). Výsledek omezte na 10 řádků.

SELECT
  date,
  zip,
  revenue
FROM
  sales
ORDER BY
  revenue DESC
LIMIT
  10 */
  
/* Úkol 3 - Vyberte jedinečné názvy produktů z tabulky product, pro které platí následující:
		produkt je v kategorii (category) Mix	
		cena produktu (priceNew) je nižší než 200$
		název produktu (product) začíná na písmeno P nebo obsahuje písmeno Q
	Výsledek seřaďte vzestupně.
    
SELECT
  DISTINCT product
FROM
  product
WHERE
  (product LIKE 'P%' OR product LIKE '%Q%')
  AND category = 'Mix'
  AND pricenew < 200
ORDER BY 
  product

*/