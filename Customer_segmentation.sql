with customer_ltv as(
select 
	customerkey,
	cleaned_name,
	sum(total_net_revenue) as total_ltv
from cohort_analysis 
group by 
customerkey,
cleaned_name 
),
customer_segment as (
select 
	percentile_cont(0.25) within group (
	order by total_ltv) as ltv_25th_percentile,
	percentile_cont(0.75) within group (
	order by total_ltv) as ltv_75th_percentile
from
	customer_ltv
),
segment_value as (
select 
	c.*,
	case
		when c.total_ltv < cs.ltv_25th_percentile then '1 - low-value'
		when c.total_ltv <= cs.ltv_75th_percentile then '2 - Mid-value'
		else '3-High-Value'
	end as customer_segment
from
	customer_ltv c,
	customer_segment cs
)
select
	customer_segment,
	sum(total_ltv) as total_itv,
	count(customerkey) as customer_count,
	sum(total_ltv)/ count(customerkey) as avg_itv
from
	segment_value
group by
	customer_segment
order by
	customer_segment desc
