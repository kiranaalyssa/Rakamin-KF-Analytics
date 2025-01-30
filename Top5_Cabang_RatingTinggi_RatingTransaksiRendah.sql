--Top 5 Cabang dengan Rating Tertinggi, namun Rating Transaksi Terendah
SELECT
    kc.branch_name,
    kc.kota,
    kc.rating AS branch_rating,
    ft.rating AS transaction_rating
FROM
    `kimia_farma.kf_final_transaction` ft
JOIN
    `kimia_farma.kf_kantor_cabang` kc
ON
    ft.branch_id = kc.branch_id
ORDER BY
    kc.rating DESC, ft.rating ASC
LIMIT 5;
