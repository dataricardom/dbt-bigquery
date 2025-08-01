with

int_join_clientes_produtos_vendas as (

    select * from {{ ref("int_vendas_join_vendas_produtos_clientes") }}
),

int_total_vendas as (
    select
        id_cliente,
        nome_cliente,
        estado_sigla,
        venda_data,
        qtd_vendas,
        id_venda,
        id_produto,
        produto_nome,
        categoria_produto,
        preco_produto,
        qtd_vendas * preco_produto as total_vendas
    from int_join_clientes_produtos_vendas
)

select * from int_total_vendas
