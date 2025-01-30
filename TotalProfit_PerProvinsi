--Total Profit Per Provinsi
SELECT
    kc.provinsi,
    ROUND(
        SUM(
            (pd.price * (1 - ft.discount_percentage)) *
            CASE
                WHEN pd.price <= 50000 THEN 0.1
                WHEN pd.price > 50000 AND pd.price <= 100000 THEN 0.15
                WHEN pd.price > 100000 AND pd.price <= 300000 THEN 0.2
                WHEN pd.price > 300000 AND pd.price <= 500000 THEN 0.25
                ELSE 0.3
            END
        ), 2) AS nett_profit
FROM
    `kimia_farma.kf_final_transaction` ft
JOIN
    `kimia_farma.kf_product` pd
ON
    ft.product_id = pd.product_id
JOIN
    `kimia_farma.kf_kantor_cabang` kc
ON
    ft.branch_id = kc.branch_id
GROUP BY
    kc.provinsi
ORDER BY
    nett_profit DESC;
