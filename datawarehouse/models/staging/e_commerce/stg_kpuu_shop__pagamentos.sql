with

source_pagamentos as (

    select * from {{ source('e-commerce', 'pagamentos') }}

),

renamed_colunas as (

    select
        pagamento_id as id_pagamento,
        venda_id as id_venda,
        metodo_pagamento as tipo_pagamento,
        status as status_pagamento
    from source_pagamentos
)

select * from renamed_colunas
