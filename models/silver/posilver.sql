{{
    config(
        materialized='table',
        transient=true
    )
}}
with posil as (
    select *
    from {{ ref('poview') }}
)

select 
    ID AS ORDER_ID,
    INITCAP(NAME) AS FULL_NAME,
    AGE AS AGE,
    ORDERS
from posil