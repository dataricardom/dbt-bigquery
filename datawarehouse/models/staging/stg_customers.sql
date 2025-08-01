with

source as (

    select * from {{ source('e-commerce', 'raw_customers') }}

),

renamed as (

    select

        ----------  ids
        id as customer_id,
        name as customer_name

    from source

)

select * from renamed
