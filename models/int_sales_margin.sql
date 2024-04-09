SELECT 
    date_date,
    products_id,
    quantity,
    purchase_price,
    quantity * purchase_price AS purchase_cost,
    revenue - (quantity * purchase_price) AS margin
FROM {{ref("stg_raw__product")}} AS product
JOIN {{ref("stg_raw__sales")}} AS sales
    USING(products_id)