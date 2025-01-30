--Top 10 Total Transaksi Cabang Provinsi
SELECT
    kc.provinsi,
    kc.branch_name,
    COUNT(ft.transaction_id) AS total_transactions
FROM
    `kimia_farma.kf_final_transaction` ft
JOIN
    `kimia_farma.kf_kantor_cabang` kc
ON
    ft.branch_id = kc.branch_id
GROUP BY
    kc.provinsi, kc.branch_name
ORDER BY
    total_transactions DESC
LIMIT 10;
