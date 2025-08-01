with

vendas as (

    select * from {{ ref("int_vendas_total_vendas") }}
),

vendas_por_categoria as (

    select
        categoria_produto,
        sum(qtd_vendas) as vendas_realizas_por_categoria,
        sum(total_vendas) as valor_total_vendas
    from vendas
    group by categoria_produto
    order by valor_total_vendas desc
)

select * from vendas_por_categoria
