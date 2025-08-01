with

vendas as (
    select * from {{ ref("int_vendas_total_vendas") }}
),

vendas_totais_por_cliente as (
    select
        nome_cliente,
        sum(qtd_vendas) as qtd_vendas,
        sum(total_vendas) as valor_vendas_totais
    from vendas
    group by nome_cliente
)

select * from vendas_totais_por_cliente
