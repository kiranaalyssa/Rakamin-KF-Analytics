--Perbandingan Pendapatan Kimia Farma dari tahun ke tahun
SELECT
    EXTRACT(YEAR FROM ft.date) AS tahun,
    SUM(pd.price * (1 - ft.discount_percentage)) AS nett_sales
FROM
    `kimia_farma.kf_final_transaction` ft
JOIN
    `kimia_farma.kf_product` pd
ON
    ft.product_id = pd.product_id
GROUP BY
    tahun
ORDER BY
    nett_sales DESC;
