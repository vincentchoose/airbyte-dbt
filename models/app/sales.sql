{{ config(materialized='table') }}

select
    ("_airbyte_data" ->> 'id')::text as sale_id,
    ("_airbyte_data" ->> 'brand_id')::text as brand_id
    coalesce(("_airbyte_data" ->> 'start_at')::date,("_airbyte_data" ->> 'initial_start_at')::date) as start_at
from public."_airbyte_raw_sales"
