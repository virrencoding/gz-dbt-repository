SELECT 

    products_id, 

    date_date, 

    orders_id,

    s.revenue, 

    s.quantity, 

    CAST(p.purchase_price AS FLOAT64) AS purchase_price, 

    ROUND(s.quantity*CAST(p.purchase_price AS FLOAT64),2) AS purchase_cost,

    s.revenue - ROUND(s.quantity*CAST(p.purchase_price AS FLOAT64),2) AS margin

FROM {{ref("stg_gz_raw_data__sales")}} s

LEFT JOIN {{ref("stg_gz_raw_data__product")}} p 

    USING (products_id)






