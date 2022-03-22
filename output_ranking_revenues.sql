select order_no
     , Revenue
     , Brand
     , categories
     , SUM(Revenue) OVER (PARTITION BY categories,Revenue) AS sum_rev
     , DENSE_RANK() OVER (PARTITION BY categories ORDER BY Brand DESC ) AS D_RANK_NUMW 
from Orders


Result Set 21
ORDER_NO	REVENUE	BRAND	CATEGORIES	SUM_REV	D_RANK_NUMW
10	400	nokia	Electronics	2000	1
8	400	nokia	Electronics	2000	1
9	400	nokia	Electronics	2000	1
12	400	nokia	Electronics	2000	1
11	400	nokia	Electronics	2000	1
32	10	mi	Electronics	180	2
31	10	mi	Electronics	180	2
30	10	mi	Electronics	180	2
29	10	mi	Electronics	180	2
28	10	mi	Electronics	180	2
27	10	mi	Electronics	180	2
26	10	mi	Electronics	180	2
25	10	mi	Electronics	180	2
16	10	mi	Electronics	180	2
17	10	mi	Electronics	180	2
23	10	mi	Electronics	180	2
33	10	mi	Electronics	180	2
19	10	mi	Electronics	180	2
20	10	mi	Electronics	180	2
21	10	mi	Electronics	180	2
24	10	mi	Electronics	180	2
18	10	mi	Electronics	180	2
15	900	apple	Electronics	2700	3
14	900	apple	Electronics	2700	3
13	900	apple	Electronics	2700	3
5	300	Samsung	Electronics	2100	4
6	300	Samsung	Electronics	2100	4
4	300	Samsung	Electronics	2100	4
2	300	Samsung	Electronics	2100	4
1	300	Samsung	Electronics	2100	4
3	300	Samsung	Electronics	2100	4
7	300	Samsung	Electronics	2100	4
34	600	OnePlus	Electronics	1200	5
35	600	OnePlus	Electronics	1200	5
22	10	 mi	Electronics	180	6
36	1000	luvion vuitton	fashion	6000	1
37	1000	luvion vuitton	fashion	6000	1
38	1000	luvion vuitton	fashion	6000	1
39	1000	luvion vuitton	fashion	6000	1
40	1000	luvion vuitton	fashion	6000	1
41	1000	luvion vuitton	fashion	6000	1
46	700	gucci	fashion	3500	2
45	700	gucci	fashion	3500	2
44	700	gucci	fashion	3500	2
43	700	gucci	fashion	3500	2
47	700	gucci	fashion	3500	2
48	620	dior	fashion	1240	3
49	620	dior	fashion	1240	3
50	650	H&M	fashion	650	4
77	850	ramya	home	4250	1
Download CSV
Rows 1 - 50. More rows exist.
