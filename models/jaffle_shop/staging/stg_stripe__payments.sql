select 
    Id as payment_id
    ,orderid as order_id
    ,paymentmethod as payment_method
    ,status
    ,round((amount/100),2) as amount
    ,created
    ,_batched_at as batched_at
from {{ source('stripe', 'payment') }}