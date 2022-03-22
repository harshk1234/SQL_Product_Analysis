   select order_no --rank(repetation count +1)
     , Revenue
     , Brand
     ,categories
     , RANK() OVER (PARTITION BY categories  ) AS RANK_NUMW 
from Orders


Result Set 19
ORDER_NO	REVENUE	BRAND	CATEGORIES	RANK_NUMW
12	400	nokia	Electronics	1
11	400	nokia	Electronics	1
10	400	nokia	Electronics	1
9	400	nokia	Electronics	1
8	400	nokia	Electronics	1
26	10	mi	Electronics	6
33	10	mi	Electronics	6
27	10	mi	Electronics	6
28	10	mi	Electronics	6
29	10	mi	Electronics	6
25	10	mi	Electronics	6
31	10	mi	Electronics	6
30	10	mi	Electronics	6
24	10	mi	Electronics	6
23	10	mi	Electronics	6
16	10	mi	Electronics	6
17	10	mi	Electronics	6
18	10	mi	Electronics	6
19	10	mi	Electronics	6
20	10	mi	Electronics	6
21	10	mi	Electronics	6
32	10	mi	Electronics	6
15	900	apple	Electronics	23
14	900	apple	Electronics	23
13	900	apple	Electronics	23
7	300	Samsung	Electronics	26
6	300	Samsung	Electronics	26
5	300	Samsung	Electronics	26
4	300	Samsung	Electronics	26
3	300	Samsung	Electronics	26
1	300	Samsung	Electronics	26
2	300	Samsung	Electronics	26
35	600	OnePlus	Electronics	33
34	600	OnePlus	Electronics	33
22	10	 mi	Electronics	35
36	1000	luvion vuitton	fashion	1
37	1000	luvion vuitton	fashion	1
38	1000	luvion vuitton	fashion	1
39	1000	luvion vuitton	fashion	1
40	1000	luvion vuitton	fashion	1
41	1000	luvion vuitton	fashion	1
43	700	gucci	fashion	7
44	700	gucci	fashion	7
45	700	gucci	fashion	7
46	700	gucci	fashion	7
47	700	gucci	fashion	7
48	620	dior	fashion	12
49	620	dior	fashion	12
50	650	H&M	fashion	14
77	850	ramya	home	1
Download CSV



select order_no --D_rank (repetation count=0)
     , Revenue
     , Brand
     ,categories
     , DENSE_RANK() OVER (PARTITION BY categories ORDER BY Brand DESC ) AS D_RANK_NUMW 

   from Orders



Result Set 20
ORDER_NO	REVENUE	BRAND	CATEGORIES	D_RANK_NUMW
12	400	nokia	Electronics	1
11	400	nokia	Electronics	1
10	400	nokia	Electronics	1
9	400	nokia	Electronics	1
8	400	nokia	Electronics	1
26	10	mi	Electronics	2
33	10	mi	Electronics	2
27	10	mi	Electronics	2
28	10	mi	Electronics	2
29	10	mi	Electronics	2
25	10	mi	Electronics	2
31	10	mi	Electronics	2
30	10	mi	Electronics	2
24	10	mi	Electronics	2
23	10	mi	Electronics	2
16	10	mi	Electronics	2
17	10	mi	Electronics	2
18	10	mi	Electronics	2
19	10	mi	Electronics	2
20	10	mi	Electronics	2
21	10	mi	Electronics	2
32	10	mi	Electronics	2
15	900	apple	Electronics	3
14	900	apple	Electronics	3
13	900	apple	Electronics	3
7	300	Samsung	Electronics	4
6	300	Samsung	Electronics	4
5	300	Samsung	Electronics	4
4	300	Samsung	Electronics	4
3	300	Samsung	Electronics	4
1	300	Samsung	Electronics	4
2	300	Samsung	Electronics	4
35	600	OnePlus	Electronics	5
34	600	OnePlus	Electronics	5
22	10	 mi	Electronics	6
36	1000	luvion vuitton	fashion	1
37	1000	luvion vuitton	fashion	1
38	1000	luvion vuitton	fashion	1
39	1000	luvion vuitton	fashion	1
40	1000	luvion vuitton	fashion	1
41	1000	luvion vuitton	fashion	1
43	700	gucci	fashion	2
44	700	gucci	fashion	2
45	700	gucci	fashion	2
46	700	gucci	fashion	2
47	700	gucci	fashion	2
48	620	dior	fashion	3
49	620	dior	fashion	3
50	650	H&M	fashion	4
77	850	ramya	home	1
Download CSV
Rows 1 - 50. More rows exist.
