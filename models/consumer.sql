select *
 from {{ source('dbt_sample', 'CONSUMER') }}