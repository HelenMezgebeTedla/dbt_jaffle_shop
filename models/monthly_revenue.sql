{{ config(materialized='table') }}

select
    date_trunc('month', o.order_date) as revenue_month,
    o.customer_id,
    c.first_name,
    c.last_name,
    count(o.order_id) as order_count,
    sum(o.amount) as total_revenue
from {{ ref('orders') }} o
left join {{ ref('customers') }} c on o.customer_id = c.customer_id
group by 1, 2, 3, 4
