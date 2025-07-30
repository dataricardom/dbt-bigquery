with

source as (

    select * from {{ source('e-commerce','produtos') }}

),

renamed_colunas as (
    select
        produto_id as id_produto,
        nome_produto as produto_nome,
        categoria as categoria_produto,
        preco as preco_produto
    from source
)

select * from renamed_colunas
