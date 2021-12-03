
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

select
    ("_airbyte_data" ->> 'Semaine')::text as week,
    ("_airbyte_data" ->> 'Premier Jour Semaine')::text as week_first_day,
    ("_airbyte_data" ->> 'Période')::text as "period",
    ("_airbyte_data" ->> 'Media source')::text as media_source,
    ("_airbyte_data" ->> 'Ad set')::text as adset,
    ("_airbyte_data" ->> 'Campagne')::text as campaign,
    ("_airbyte_data" ->> 'Type de campagne')::text as campaign_type,
    ("_airbyte_data" ->> 'Objectif de la campagne')::text as campaign_objective,
    ("_airbyte_data" ->> 'OS')::text as os,
    ("_airbyte_data" ->> 'Impression Device')::text as impression_device,
    ("_airbyte_data" ->> 'NEW USER vs OLD USER')::text as user_type,
    ("_airbyte_data" ->> 'Impressions')::integer as impressions,
    ("_airbyte_data" ->> 'Clics')::integer as clicks,
    ("_airbyte_data" ->> 'App installs')::integer as app_installs,
    ("_airbyte_data" ->> 'ATC')::integer as add_to_cart,
    ("_airbyte_data" ->> 'Uniq ATC')::integer as unique_add_to_cart,
    ("_airbyte_data" ->> 'Estimated ATC')::integer as estimated_add_to_cart,
    ("_airbyte_data" ->> 'Estimated Uniq ATC')::integer as estimated_unique_add_to_cart,
    ("_airbyte_data" ->> 'Estimated Uniq Purchase')::integer as estimated_unique_purchases,
    replace("_airbyte_data" ->> 'Cost', ',', '.')::numeric as cost
from market."_airbyte_raw_data___all_canaux__a_exporter_"
