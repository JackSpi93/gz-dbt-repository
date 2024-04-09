with 

source as (

    select * from {{ source('raw', 'sales') }}

),

renamed as (

    select
        CONCAT(pdt_id,"_",date_date) AS PK ,
        date_date,
        pdt_id AS products_id,
        orders_id,
        revenue,
        quantity

    from source

)

select * from renamed
