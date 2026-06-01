{{
    config(
        materialized='table'
    )
}}
SELECT {{ employeefuname('FIRST_NAME', 'LAST_NAME') }} AS FULL_NAME1,
 {{employeegen('GENDER')}} AS GENDER1
FROM {{ source('dbt_sample', 'EMPLOYEE') }}


