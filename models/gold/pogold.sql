{{
    config(
        materialized='table',
        transient='false'
    )
}}

with gold as(
    select * 
    from {{ ref('posilver') }}
),
original_gold as(
select g.ORDER_ID,
       g.FULL_NAME,
       s.PRODUCT_NAME    
       from gold g
left join {{ source('dbt_sample', 'SALES') }} s
      ON g.FULL_NAME = s.FULL_NAME
)

select 
    ORDER_ID AS ORDER_ID,
    UPPER(FULL_NAME) AS NAME,
    CASE 
        WHEN PRODUCT_NAME IS  NULL THEN 'NA'
        ELSE PRODUCT_NAME
        END AS PRODUCT_NAME
 from original_gold
