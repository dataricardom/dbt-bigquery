with
source_vendas as (

    select * from {{ source('e-commerce','vendas') }}
),

renamed_colunas as (
    select
        venda_id as id_venda,
        cast(data_venda as date) as venda_data,
        cliente_id as id_cliente,
        produto_id as id_produto,
        quantidade as qtd_vendas
    from source_vendas
)

select * from renamed_colunas
