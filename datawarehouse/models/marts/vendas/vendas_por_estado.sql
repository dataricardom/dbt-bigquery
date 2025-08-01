with

vendas as (
    select * from {{ ref("int_vendas_total_vendas") }}
),

vendas_totais_por_estado as (
    select
        estado_sigla as estado,
        sum(total_vendas) as total_vendas
    from vendas
    group by estado_sigla
)

select * from vendas_totais_por_estado
