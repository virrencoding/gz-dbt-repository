select *
from {{ ref('sales') }}
where id = 1



/*{{ config(materialized='product') }}

with product as (

    select 1 as id
    union all
    select null as id

)

select *
from product*/