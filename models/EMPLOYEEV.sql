{{
    config(
        materialized='VIEW'
    )
}}
SELECT * FROM {{ source('dbt_sample', 'EMPLOYEE') }}