select * 
from {{ source('dbt_sample', 'PO_TABLE') }}