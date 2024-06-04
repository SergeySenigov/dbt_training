{{ config(alias='edu_fct_orders') }}


with stg as (
    select * from {{ ref('stg_orders')}}
)

select * from stg