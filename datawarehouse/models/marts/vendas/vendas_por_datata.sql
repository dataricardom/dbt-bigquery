with

vendas as (
    select * from {{ ref("int_vendas_total_vendas") }}
),

vendas_totais_por_data as (
    select
        venda_data as data_de_venda,
        sum(qtd_vendas) as qtd_vendas,
        sum(total_vendas) as valor_vendas_totais
    from vendas
    group by data_de_venda
)

select * from vendas_totais_por_data
