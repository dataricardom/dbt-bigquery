with clientes AS (
    select
        CUSTOMER_NAME,
        CUSTOMER_ID
        FROM {{ref("stg_customers")}}
        WHERE CUSTOMER_NAME LIKE 'A%'
)

select * from clientes
