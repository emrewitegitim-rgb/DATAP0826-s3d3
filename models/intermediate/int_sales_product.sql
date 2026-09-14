SELECT
    s.*
    , (p.purchase_price * s.quantity) as total_cost
FROM {{ ref("stg_raw__sales") }} as s
JOIN {{ ref("stg_raw__products")}} as p
    ON s.product_id = p.product_id