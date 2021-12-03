
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

select
    "_airbyte_data" ->> 'OS' as os,
    ("_airbyte_data" ->> 'ATC')::integer as add_to_cart
from airbyte."_airbyte_raw_data___all_canaux__a_exporter_"
limit 10

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
