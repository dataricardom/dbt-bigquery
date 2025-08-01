with
stg_produtos as (

    select * from {{ ref("stg_kpuu_shop__produtos") }}

),

stg_vendas as (

    select * from {{ ref("stg_kpuu_shop__vendas") }}

),

stg_clientes as (

    select * from {{ ref("stg_kpuu_shop__clientes") }}

),

int_join_clientes_produtos_vendas as (

    select
        c.id_cliente,
        c.nome_cliente,
        c.e_mail,
        c.estado_sigla,
        v.venda_data,
        v.qtd_vendas,
        v.id_venda,
        p.id_produto,
        p.produto_nome,
        p.categoria_produto,
        p.preco_produto
    from stg_vendas as v
    inner join stg_clientes as c on v.id_cliente = c.id_cliente
    inner join stg_produtos as p on v.id_produto = p.id_produto

)

select * from int_join_clientes_produtos_vendas
