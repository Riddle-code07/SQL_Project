select 
	cohort_year,
	sum(total_net_revenue) as total_revenue,
	sum(total_net_revenue)/ count(distinct customerkey) as customer_revenue
from cohort_analysis ca
where orderdate = first_purchase_date 
group by 
	cohort_year 
