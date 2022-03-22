
select order_no   --sum
     , Revenue
     , Brand
     ,categories
     , SUM(Revenue) OVER (PARTITION BY categories) AS sum_rev    --sum categories
   from Orders
   
   
