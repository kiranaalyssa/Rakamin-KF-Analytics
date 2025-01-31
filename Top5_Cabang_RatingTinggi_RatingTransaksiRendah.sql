--Top 5 Cabang dengan Rating Tertinggi namun Rating Transaksi Rendah
SELECT 
    kc.branch_name,
    kc.kota,
    AVG(kc.rating) AS avg_branch_rating,
    AVG(ft.rating) AS avg_transaction_rating
FROM 
    `kimia_farma.kf_final_transaction` ft
JOIN 
    `kimia_farma.kf_kantor_cabang` kc
ON 
    ft.branch_id = kc.branch_id
GROUP BY 
    kc.branch_name, kc.kota
ORDER BY 
    avg_branch_rating DESC, avg_transaction_rating ASC
LIMIT 5;
