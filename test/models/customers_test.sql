{{ config(materialized='incremental',unique_key='ID',materialized='view') }}

with source_data as (

    select 1 as id,2 as value, 3 set
    union all
    select 2 as id,null as value, 4 set

)

select *
from source_data