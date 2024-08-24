{{ config(materialized='sales') }}

with sales as (

    select 1 as id
    union all
    select null as id

)

select *
from sales