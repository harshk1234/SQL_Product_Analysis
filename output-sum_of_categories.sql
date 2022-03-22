
select order_no   --sum
     , Revenue
     , Brand
     ,categories
     , SUM(Revenue) OVER (PARTITION BY categories) AS sum_rev    --sum categories
   from Orders
   


ORDER_NO	REVENUE	BRAND	CATEGORIES	SUM_REV
1	300	Samsung	Electronics	8180
35	600	OnePlus	Electronics	8180
3	300	Samsung	Electronics	8180
4	300	Samsung	Electronics	8180
5	300	Samsung	Electronics	8180
6	300	Samsung	Electronics	8180
7	300	Samsung	Electronics	8180
8	400	nokia	Electronics	8180
9	400	nokia	Electronics	8180
10	400	nokia	Electronics	8180
11	400	nokia	Electronics	8180
12	400	nokia	Electronics	8180
13	900	apple	Electronics	8180
14	900	apple	Electronics	8180
15	900	apple	Electronics	8180
16	10	mi	Electronics	8180
17	10	mi	Electronics	8180
18	10	mi	Electronics	8180
19	10	mi	Electronics	8180
20	10	mi	Electronics	8180
21	10	mi	Electronics	8180
22	10	 mi	Electronics	8180
23	10	mi	Electronics	8180
24	10	mi	Electronics	8180
25	10	mi	Electronics	8180
26	10	mi	Electronics	8180
27	10	mi	Electronics	8180
28	10	mi	Electronics	8180
29	10	mi	Electronics	8180
30	10	mi	Electronics	8180
31	10	mi	Electronics	8180
32	10	mi	Electronics	8180
33	10	mi	Electronics	8180
34	600	OnePlus	Electronics	8180
2	300	Samsung	Electronics	8180
36	1000	luvion vuitton	fashion	11390
37	1000	luvion vuitton	fashion	11390
38	1000	luvion vuitton	fashion	11390
39	1000	luvion vuitton	fashion	11390
40	1000	luvion vuitton	fashion	11390
41	1000	luvion vuitton	fashion	11390
43	700	gucci	fashion	11390
44	700	gucci	fashion	11390
45	700	gucci	fashion	11390
46	700	gucci	fashion	11390
47	700	gucci	fashion	11390
48	620	dior	fashion	11390
49	620	dior	fashion	11390
50	650	H&amp;M	fashion	11390
51	200	Citizenry	home	10325
