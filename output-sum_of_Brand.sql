
select order_no   --sum
     , Revenue
     , Brand
     , SUM(Revenue) OVER (PARTITION BY Brand) AS sum_rev
   from Orders
   
   
Result Set 10
ORDER_NO	REVENUE	BRAND	SUM_REV
22	10	 mi	10
51	200	Citizenry	1200
52	200	Citizenry	1200
53	200	Citizenry	1200
55	200	Citizenry	1200
56	200	Citizenry	1200
54	200	Citizenry	1200
57	600	Cyahi	4200
58	600	Cyahi	4200
59	600	Cyahi	4200
61	600	Cyahi	4200
60	600	Cyahi	4200
62	600	Cyahi	4200
63	600	Cyahi	4200
50	650	H&M	650
66	100	Nicobar	600
69	100	Nicobar	600
65	100	Nicobar	600
64	100	Nicobar	600
67	100	Nicobar	600
68	100	Nicobar	600
70	25	Objectry	75
71	25	Objectry	75
72	25	Objectry	75
35	600	OnePlus	1200
34	600	OnePlus	1200
7	300	Samsung	2100
6	300	Samsung	2100
5	300	Samsung	2100
4	300	Samsung	2100
3	300	Samsung	2100
1	300	Samsung	2100
2	300	Samsung	2100
15	900	apple	2700
13	900	apple	2700
14	900	apple	2700
49	620	dior	1240
48	620	dior	1240
47	700	gucci	3500
46	700	gucci	3500
43	700	gucci	3500
45	700	gucci	3500
44	700	gucci	3500
73	850	lavnya	3400
76	850	lavnya	3400
74	850	lavnya	3400
75	850	lavnya	3400
36	1000	luvion vuitton	6000
37	1000	luvion vuitton	6000
38	1000	luvion vuitton	6000
Download CSV
Rows 1 - 50. More rows exist.
