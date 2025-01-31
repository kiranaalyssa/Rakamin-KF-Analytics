-- Top 10 Nett Sales Cabang Provinsi
SELECT
    kc.provinsi,
    SUM(ROUND(pd.price * (1 - ft.discount_percentage), 2)) AS total_nett_sales
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
    total_nett_sales DESC
LIMIT 10;
