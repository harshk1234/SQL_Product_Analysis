select count(*) from Orders;
-->
COUNT(*)
76
Download CSV


select count(*) over () from Orders;
-->
Result Set 5
COUNT(*)OVER()
76
76
76
76
76
76
76
76
76
76
76
76
76
76
76
76......

select categories, count(*), sum ( revenue )
from   Orders
group  by categories;
-->
CATEGORIES	COUNT(*)	SUM(REVENUE)
Electronics 	35      	8180
fashion	      14	      11390
home	        27       	10325

