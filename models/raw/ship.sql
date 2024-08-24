{{ config(materialized='ship') }}

with ship as (

    select 1 as id
    union all
    select null as id

)

select *
from ship