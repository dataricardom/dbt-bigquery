with clientes as (
    select
        customer_name,
        customer_id
    from {{ ref("stg_customers") }}
    where customer_name like 'A%'
)

select * from clientes
