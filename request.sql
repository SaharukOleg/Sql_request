1) SELECT maker,type From Product ORDER BY maker;
2) SELECT model, ram, screen, price FROM Laptop WHERE price > 1000  ORDER BY ram ; 
   SELECT model, ram, screen, price FROM Laptop WHERE price > 1000  ORDER BY price DESC ;
3) SELECT * FROM Labor_SQL.Printer WHERE color = 'y' ORDER BY price DESC;
4) SELECT model, speed, hd, cd, price FROM PC WHERE cd = '12x' OR cd = '24x' AND price < 600 ORDER BY price DESC;
5) SELECT name, class FROM Ships where name = class ORDER BY name;
6) SELECT * FROM Labor_SQL.PC WHERE speed >= 500 AND price < 800 ORDER BY price DESC;
7) SELECT * FROM Labor_SQL.Printer WHERE NOT type = 'matrix' AND price < 300 ORDER BY type DESC;
8) SELECT model, speed FROM Labor_SQL.PC WHERE price BETWEEN 400 AND 600;
9) select product.model, ram, hd from product join pc on product.model = pc.model where (hd = 10 or hd = 20) and maker = 'A';
10) SELECT model, speed, hd, price FROM Laptop WHERE screen >= 12 ORDER BY price DESC;
11) SELECT model, type, price FROM Printer WHERE price < 300 ORDER BY type DESC;
12) SELECT model, ram, price FROM Laptop WHERE ram  = 64  ORDER BY screen ;
13) SELECT model, ram, price FROM Laptop WHERE ram  > 64  ORDER BY hd ;
14) SELECT model, speed, price FROM PC WHERE speed  BETWEEN 500 AND 750   ORDER BY hd DESC ;
15) select * from outcome_o where outcome_o.out > 2000 ;
16) select * from Income_o where income_o.inc  between 5000 and 10000 ;
17) SELECT * FROM Labor_SQL.Income where point = 1 order by inc;
18) SELECT * FROM Labor_SQL.Outcome where point = 2 ORDER BY Outcome.out ;
19) SELECT * FROM Labor_SQL.Classes WHERE country = 'Japan' ORDER BY type DESC;
20) SELECT name, launched FROM Labor_SQL.Ships WHERE launched BETWEEN 1920 AND 1942 ORDER BY launched DESC;
21) SELECT * FROM Labor_SQL.Outcomes  where battle =  'Guadalcanal'  and  result = 'ok' or result =  'damaged' order by ship  desc;
22) SELECT * FROM Labor_SQL.Outcomes  where  result = 'sunk' order by ship  desc;
23) SELECT class, displacement FROM Labor_SQL.Classes WHERE displacement > 40  ORDER BY type;
24) SELECT trip_no, town_from, town_to FROM Labor_SQL.Trip WHERE town_from = 'London' OR town_to = 'London' ORDER BY time_out;
25) SELECT trip_no, plane, town_from, town_to FROM Labor_SQL.Trip WHERE plane = 'TU-134' ;
26) SELECT trip_no, plane, town_from, town_to FROM Labor_SQL.Trip WHERE NOT plane = 'IL-86' ORDER BY plane;
27) SELECT trip_no, town_from, town_to FROM Labor_SQL.Trip WHERE NOT town_from = 'Rostov' AND  NOT town_to = 'Rostov'  ORDER BY plane;
__________________________________________________________________________________

Part 2 

1) SELECT * FROM Labor_SQL.PC WHERE model like '%1%1';
2) SELECT * FROM Labor_SQL.Outcome WHERE date between  '2001-03-01' AND '2001-03-31' ;
3) SELECT * FROM Labor_SQL.Outcome WHERE dayofmonth(date) = 14 ;
4) SELECT * FROM Labor_SQL.Ships WHERE name like 'W%n';
5) SELECT name FROM Labor_SQL.Ships WHERE name like '%e%e' ;
6) SELECT name, launched FROM Labor_SQL.Ships WHERE name  NOT like '%n';
7) 
8) SELECT * FROM Labor_SQL.Trip where hour(time_out) between 12 and 17 ;
9) SELECT * FROM Labor_SQL.Trip where hour(time_in) between 17 and 23 ;
10) SELECT date FROM Labor_SQL.Pass_in_trip WHERE place like '1_';
11) SELECT date FROM Labor_SQL.Pass_in_trip WHERE place like '_c';
12) SELECT name FROM Labor_SQL.Passenger WHERE name like '% c%';
13) SELECT name FROM Labor_SQL.Passenger WHERE name NOT  like '% J%';

__________________________________________________________________________________

Part 3 

1) SELECT maker, type, speed, hd FROM pc   JOIN product AS pr ON pc.model=pr.model  WHERE hd <=8;
2) SELECT maker FROM Labor_SQL.Product join PC on Product.model = PC.model where speed >= 600;
3) SELECT maker FROM Labor_SQL.Laptop join Product on Product.model = Laptop.model where speed <= 500;
4) SELECT DISTINCT * FROM Laptop l1 join Laptop l2 on l1.hd = l2.hd AND l1.ram = l2.ram AND l1.code > l2.code ;
5) SELECT * FROM (SELECT c1.country from Classes as c1 group by c1.country, c1.type) AS c2 group by c2.country having count(c2.country)=2;
6) SELECT PC.model, Product.maker FROM Labor_SQL.PC join Product on PC.model = Product.model where price < 600;
7) SELECT Printer.model, Product.maker from Printer join Product on Printer.model=Product.model where price >300;
8) SELECT Product.maker, PC.model, price  FROM Labor_SQL.PC join Product on Product.model= PC.model;
9) SELECT Product.maker, PC.model, price  FROM Labor_SQL.PC join Product on Product.model= PC.model WHERE price IS NOT NULL;
10) SELECT maker, type,  speed FROM Labor_SQL.Laptop l1 join Product p1 on l1.model = p1.model WHERE speed > 600; // доробити
11) SELECT Classes.displacement FROM Labor_SQL.Ships join Classes on Ships.class = Classes.class;
12) SELECT  Outcomes.battle,  Battles.date FROM Labor_SQL.Battles join Outcomes on Outcomes.battle = Battles.name  where result = 'OK' ;
13) SELECT  name, country  FROM Labor_SQL.Ships  join Classes  on Ships.class = Classes.class ;
14) SELECT plane, Company.name FROM Labor_SQL.Trip join Company on Trip.ID_comp = Company.ID_comp where plane = 'Boeing' ;
15) SELECT name, Pass_in_trip.date FROM Labor_SQL.Passenger join Pass_in_trip on Passenger.ID_psg = Pass_in_trip.ID_psg ;