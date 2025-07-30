with

source as (

    select * from {{ source('e-commerce', 'clientes') }}

),

renamed_colunas as (
    select
        cliente_id as id_cliente,
        nome as nome_cliente,
        email as e_mail,
        estado as estado_sigla
    from source
)

select * from renamed_colunas
