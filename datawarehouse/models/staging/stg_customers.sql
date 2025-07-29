WITH

SOURCE AS (

    SELECT * FROM {{ source('e-commerce', 'raw_customers') }}

),

RENAMED AS (

    SELECT

        ----------  ids
        ID AS CUSTOMER_ID,
        NAME AS CUSTOMER_NAME

    FROM SOURCE

)

SELECT * FROM RENAMED
