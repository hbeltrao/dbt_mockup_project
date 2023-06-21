with source as (
    select
        id
        , orderid as order_id
        , paymentmethod
        , status
        , {{ cents_to_dollars('amount') }} as amount
    from {{ source('stripe', 'payment') }}
)

select *
from source
