/* Lekce 4 - vytváření tabulek, přidávání dat, měnění sloupců */

/* Úkol 1 - 
Vložte do tabulky shop (z předchozího cvičení) 4 záznamy, které mají hodnoty:
shopID = 1, manager = Anna Thompson, numEmployees = 17, zip = 6026
shopID = 2, manager = Rick Fall, numEmployees = 4, zip = 102 

INSERT INTO 
  shop (shopID, manager, numEmployees, zip)
VALUES
  (1, 'Anna Thompson', 17, 6026),
  (2, 'Rick Fall', 4, 102),
  (3, 'Beth Lim', 5, 1009),
  (4, NULL, 11, 102) */

/* Úkol 2 - Vložte do tabulky shop alespoň 2 další záznamy 
(zvolte hodnoty sloupců dle sebe), pro jeden z nich do sloupce numEmployees vložte 
hodnotu NULL.

INSERT INTO 
  shop (shopID, manager, numEmployees, zip)
VALUES
  (5, 'Jane Terr', 2, 7),
  (6, 'Adam Leny', NULL, 1) */

/* Úkol 3 - Upravte následující záznamy v tabulce shop:
Změňte jméno manažera prodejny s ID 1 na Anna Richards
Upravte počet zaměstnanců prodejny s ID 2 na 6
Pro všechny pobočky, které mají PSČ 102, změňte jméno manažera na Rick Fall 

UPDATE 
  shop
SET 
  manager = 'Anna Richards'
WHERE 
  shopID = 1

UPDATE 
  shop
SET 
  numEmployees = 6
WHERE 
  shopID = 2
  
UPDATE 
  shop
SET 
  manager = 'Rick Fall'
WHERE 
  zip = 102; */
  