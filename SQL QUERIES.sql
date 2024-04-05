Select snum, sname, city, comm from salespeople;
Select distinct snum from orders;
Select sname,comm from salespeople where city = ‘London’;
Select cname from cust where rating = 100;
Select cname from cust where rating > 200;
Select cname from cust where city = ‘San Jose’ or rating > 200;
Select * from orders where amt > 1000; 
Select sname, city from salepeople where comm > 0.10 and city = ‘London’;
Select cname from cust where rating <= 100 or city = ‘Rome’; 
Select sname, city from salespeople where city in (‘Barcelona’,’London’); 
Select sname, comm from salespeople where comm > 0.10 and comm < 0.12; 
Select cname from cust where city is null; 
SELECT * FROM VAMSHINAGELLIS WHERE ODATE BETWEEN '03-10-94' AND '04-10-94';
Select onum from orders where amt != 0 or amt is not null;
SELECT COUNT(DISTINCT ORDER_ID) FROM ORDERS;

SELECT *
FROM VAMSHINAGELLIS
JOIN (
    SELECT SNUM, ODATE, MAX(AMT) AS max_amt
    FROM VAMSHINAGELLIS
    GROUP BY SNUM, ODATE
) AS max_orders
ON VAMSHINAGELLIS.SNUM = max_orders.SNUM
AND VAMSHINAGELLIS.ODATE = max_orders.ODATE
AND VAMSHINAGELLIS.AMT = max_orders.max_amt;

Select odate, snum, max(amt) from VAMSHINAGELLIS where amt > 3000 group by odate, snum order by odate,snum; 
Select odate, amt, snum, cnum from VAMSHINAGELLIS where amt = (select max(amt)  from VAMSHINAGELLIS); 

SELECT COUNT(*) AS orders_count
FROM VAMSHINAGELLIS
WHERE ODATE = '03-10-94';

SELECT COUNT(DISTINCT CITY) FROM CUST

SELECT CNUM, MIN(AMT) FROM VAMSHINAGELLIS GROUP BY CNUM;

SELECT MIN(CNAME) FROM CUST WHERE CNAME LIKE 'G%';

SELECT ' FOR THE CITY (' || CITY ||'), THE HIGHEST RATING IS : (' || MAX(RATING) ||')' FROM CUST GROUP BY CITY;

Select odate, count(onum) from VAMSHINAGELLIS group by odate order by count(onum); 

SELECT CNUM, RATING FROM CUST WHERE RATING > ( SELECT AVG(RATING ) FROM CUST WHERE CITY = 'San Jose');

SELECT * FROM VAMSHINAGELLIS WHERE AMT > (SELECT AVG(AMT) FROM VAMSHINAGELLIS WHERE ODATE = '03-10-94');




















