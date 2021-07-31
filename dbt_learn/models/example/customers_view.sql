{{ config(materialized = 'view') }}

with customer_top10_view as(
    select *
    from {{ref('customers')}}
    limit 10
)
select * from customer_top10_view