# lab 6

## Q1

```sql
SELECT name,birthplace
FROM artists;
```
| name | birthplace |
| --- | --- |
| Caravaggio |	 Milan |
| Smith| 	 Ottawa| 
|Picasso| 	 Malaga| 
|Leonardo 	 |Florence| 
|Michelangelo| 	 Arezzo| 
|Josefa 	 |Seville |
|Hans Hofmann| 	 Weisenburg |
|John 	 |San Francisco |
## Q2
```sql
SELECT title, price
FROM artworks
WHERE year > 1600;
```
| title | price |
|---|---|
|Blue|  	  10000.00|  
|Waves  	  |4000.00  |
|Three Musicians|  	  11000.00|  
## Q3
```sql
SELECT title, type
FROM artworks
WHERE year = 2000 OR artist_name = 'Picasso';
```
|title | type|
|---|---|
|Blue  	 | Modern  |
|Waves  	| |
|Three Musicians|  	  Modern|  
## Q4
```sql
SELECT name, birthplace
FROM artists
WHERE EXTRACT(YEAR FROM dateofbirth) BETWEEN 1880 AND 1930;
```
|name|birthplace|
|---|---|
|Picasso|	Malaga|
|John|	San Francisco|

## Q5
```sql
SELECT name, country
FROM artists
WHERE style IN ( 'Modern', 'Baroque', 'Renaissance');
```
|name|country|
|---|---|
 |Caravaggio| | 	
 |Smith|| 	
 |Leonardo| 	 Italy| 
| Michelangelo 	 |Italy |
 |Josefa| 	 Spain| 
 |Hans Hofmann 	 |Germany| 
 |John 	 |USA| 

## Q6
```sql
SELECT *
FROM artworks
ORDER BY title;
```
|title|year|type|price|artist_name|
|---|---|---|---|---|
|Blue|	2000|	Modern|	10000.00|	Smith|
|The Cardsharps|	1594|	Baroque|	40000.00|	Caravaggio|
|Three Musicians	|1921	|Modern	|11000.00	|Picasso|
|Waves|	2000|	|	4000.00|	Smith|

## Q7
```sql
SELECT c.name, c.id
FROM customers as c
LEFT JOIN likeartists as la ON la.customer_id = c.id
WHERE la.artist_name = 'Picasso';
```
|name|id|
|---|---|
|Emre|	4|
|Saeid	|5|
## Q8
```sql
SELECT c.name
FROM customers as c
LEFT JOIN likeartists as la ON la.customer_id = c.id
LEFT JOIN artists as a ON a.name = la.artist_name
WHERE a.style = 'Renaissance' AND c.amount > 30000;
```
|name|
|---|
|Saeid|