select o.customer_id
    ,o.order_id
    ,p.amount
from {{ ref('stg_jaffle_shop__orders') }} o
inner join {{ ref('stg_stripe__payments') }} p
on o.order_id = p.order_id
order by customer_id asc