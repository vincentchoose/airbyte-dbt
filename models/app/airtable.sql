select 
    ("_airbyte_data" ->> 'Catégorie Google')::text as taxonomy,
    ("_airbyte_data" ->> 'Grosse catégorie Choose')::text as grosse_cat,
    ("_airbyte_data" ->> 'Catégorie fine Choose')::text as sous_cat,
    ("_airbyte_data" ->> 'Catégorie Home — Client')::text as cat_home,
    coalesce("_airbyte_data" ->> 'Retournable', 'False')::text as retournable
from airbyte._airbyte_raw_setup
