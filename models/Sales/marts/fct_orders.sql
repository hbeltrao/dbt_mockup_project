with orders as (
    select *
    from {{ ref('stg_orders') }}
)

, payments as (
    select *
    from {{ ref('stg_payments') }}
)

, joined as (
    select
        orders.order_id
        , orders.customer_id
        , payments.amount
    from orders
    left join payments using (order_id)
)

select *
from joined
