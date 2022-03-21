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

select b.*, 
       count(*) over (
         order by categories
       ) running_total, 
       sum ( revenue ) over (
         order by order_no
       ) running_Revenue
from   Orders b ;


Result Set 1
ORDER_NO	REVENUE	CATEGORIES	BRAND	RUNNING_TOTAL	RUNNING_REVENUE
1	300	Electronics	Samsung	35	300
2	300	Electronics	Samsung	35	600
3	300	Electronics	Samsung	35	900
4	300	Electronics	Samsung	35	1200
5	300	Electronics	Samsung	35	1500
6	300	Electronics	Samsung	35	1800
7	300	Electronics	Samsung	35	2100
8	400	Electronics	nokia	35	2500
9	400	Electronics	nokia	35	2900
10	400	Electronics	nokia	35	3300
11	400	Electronics	nokia	35	3700
12	400	Electronics	nokia	35	4100
13	900	Electronics	apple	35	5000
14	900	Electronics	apple	35	5900
15	900	Electronics	apple	35	6800
16	10	Electronics	mi	35	6810
17	10	Electronics	mi	35	6820
18	10	Electronics	mi	35	6830
19	10	Electronics	mi	35	6840
20	10	Electronics	mi	35	6850
21	10	Electronics	mi	35	6860
22	10	Electronics	 mi	35	6870
23	10	Electronics	mi	35	6880
24	10	Electronics	mi	35	6890
25	10	Electronics	mi	35	6900
26	10	Electronics	mi	35	6910
27	10	Electronics	mi	35	6920
28	10	Electronics	mi	35	6930
29	10	Electronics	mi	35	6940
30	10	Electronics	mi	35	6950
31	10	Electronics	mi	35	6960
32	10	Electronics	mi	35	6970
33	10	Electronics	mi	35	6980
34	600	Electronics	OnePlus	35	7580
35	600	Electronics	OnePlus	35	8180
36	1000	fashion	luvion vuitton	49	9180
37	1000	fashion	luvion vuitton	49	10180
38	1000	fashion	luvion vuitton	49	11180
39	1000	fashion	luvion vuitton	49	12180
40	1000	fashion	luvion vuitton	49	13180
41	1000	fashion	luvion vuitton	49	14180
43	700	fashion	gucci	49	14880
44	700	fashion	gucci	49	15580
45	700	fashion	gucci	49	16280
46	700	fashion	gucci	49	16980
47	700	fashion	gucci	49	17680
48	620	fashion	dior	49	18300
49	620	fashion	dior	49	18920
50	650	fashion	H&M	49	19570
51	200	home	Citizenry	76	19770
