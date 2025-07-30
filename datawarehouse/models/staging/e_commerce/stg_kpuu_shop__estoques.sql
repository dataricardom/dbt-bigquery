with

source_estoque as (

    select * from {{ source('e-commerce', 'estoque') }}

),

renamed_colunas as (
    select
        produto_id as id_produto,
        quantidade_estoque as qtd_estoque,
        estoque_minimo as estoque_min
    from source_estoque
)

select * from renamed_colunas
