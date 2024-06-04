{{ config(alias='edu_stg_customers') }}


with source as (
    select * from {{ source('raw', 'edu_src_customers') }}
)
, renamed as (
    select
        id as customer_id
        , first_name
        , last_name
    from source
)
select * from renamed