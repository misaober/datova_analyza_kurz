/* 1. Který výrobci nabízejí produkty pokrývající širokou 
škálu tržních segmentů (působí nejméně v 6 segmentech)?
"Technické zadání":Pro každého výrobce (manufacturer) spočítejte, v kolika unikátních 
segmentech jsou zaznamenány produkty (product), které vyrábí. 
Vyberte pouze výrobce, kteří nabízejí produkty v alespoň 6 různých segmentech trhu.*/

Select 
    manufacturerID,
    COUNT(distinct Segment) AS pocet_segmentu
FROM
	product
WHERE
	productID is not null
group by
	manufacturerID
HAVING
    pocet_segmentu >= 6;
 
/*2. Který produkt měl nejvyšší počet prodaných kusů během prosince 2014?
"Technické zadání": Napište SQL dotaz, který spočítá celkový počet prodaných kusů (units) každého produktu 
(product) za prosinec 2014. Zobrazte pouze produkt s nejvyšším počtem prodaných kusů za toto období.*/

select
	productID,
    SUM(Units)
FROM
	sales
WHERE
	date between '2014-12-01' AND '2014-12-31'
Group BY
	productID
order BY
	SUM(Units) DESC
limit 
	2;

 
/* 3. Zjistěte, kolik produktů bylo prodáno v každém městě na západě USA, kde název města začíná slovem 'West'. 
Jména měst zobrazte bez přípony ', USA' a zahrňte i města, kde nebylo nic prodáno.
"Technické zadání": Napište SQL dotaz, který spočítá celkový počet prodaných produktů (product) v každém městě 
(city) na západě USA (region je `West`), kde název města začíná slovem `West`. Použijte tabulky `country` a `sales` 
a zahrňte i města, kde nebylo nic prodáno. Jména měst ve výsledku zobrazte bez přípony ', USA' a výsledek seřaďte podle 
počtu prodaných produktů vzestupně. */

SELECT
	RTRIM (City, 'USA') AS Mesto,
    Region,
    SUM(units)
  FROM
	country AS c
    left JOIN
    sales AS s 
    ON c.Zip = s.Zip
WHERE
	region = 'West'
    AND City LIKE 'West%'
Group BY
	City;

/* 4. V roce 2015 vstoupil do platnosti změněný daňový zákon. Přidejte ke každému prodeji z 
tohoto roku informaci o tom, jaká daň musí být odvedena na základě výše výnosu (revenue), kde:
vysokou 'HIGH' daň odvádíme z prodejů s výnosem nad 5000$,
nízkou 'LOW' z prodejů s výnosem nad 1000$ (ale do 5000$),
a žádnou 'NONE' z prodejů s výnosem pod 1000$.
Zjistěte celkový výnos a celkový počet prodaných kusů pro každou daňovou kategorii pro prodeje, 
které se uskutečnily ve státě Texas ('TX').

SELECT
    CASE
    	when revenue < 1000 then 'None'
        when revenue < 5000 then 'Low'
        else 'High'
    end as Tax,
    state,
    round(sum(revenue)) AS Total_revenue,
    sum(units) as Total_units
FROM
	sales s left join country c on s.zip = c.zip 
where
	strftime('%Y', date) = '2015' AND
    state = 'TX'
group BY
	Tax
order BY
	Total_revenue desc; */
    
    