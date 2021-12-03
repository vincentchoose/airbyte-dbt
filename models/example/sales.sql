{{ config(materialized='table') }}

select
    ("_airbyte_data" ->> 'id')::text as sale_id,
    ("_airbyte_data" ->> 'brand_id')::text as brand_id
from public."_airbyte_raw_sales"
