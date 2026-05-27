{{
    config(
        materialized='view'

    )
}}

select FIRST_NAME||''||LAST_NAME AS FULL_NAME
 from {{ source('dbt_sample', 'CONSUMER') }}


