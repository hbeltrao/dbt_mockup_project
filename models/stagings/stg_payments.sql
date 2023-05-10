with source as (
    select
        id
        , orderid as order_id
        , paymentmethod
        , status
        , amount
    from {{ source('stripe', 'payment') }}
)

select *
from source
