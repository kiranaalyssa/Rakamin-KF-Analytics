-- Membuat tabel baru bernama "analysis_table" dalam dataset "kimia_farma"
CREATE TABLE kimia_farma.analysis_table AS
--Menampilkan nama kolom dari dataset "kimia.farma"
SELECT
    ft.transaction_id,
    ft.date,
    ft.branch_id,
    kc.branch_name,
    kc.kota,
    kc.provinsi,
    kc.rating AS rating_cabang,
    ft.customer_name,
    pd.product_id,
    pd.product_name,
    pd.price AS actual_price,
    ft.discount_percentage,

    -- Menghitung persentase gross laba
    CASE
        WHEN pd.price <= 50000 THEN 0.1
        WHEN pd.price > 50000 AND pd.price <= 100000 THEN 0.15
        WHEN pd.price > 100000 AND pd.price <= 300000 THEN 0.20
        WHEN pd.price > 300000 AND pd.price <= 500000 THEN 0.25
        WHEN pd.price > 500000 THEN 0.30
    END AS presentase_gross_laba,

    -- Menghitung nett sales
    ROUND(pd.price * (1 - ft.discount_percentage), 2) AS nett_sales,

    -- Menghitung nett profit
    ROUND(    
        (pd.price * (1 - ft.discount_percentage)) * 
        CASE 
            WHEN pd.price <= 50000 THEN 0.10
            WHEN pd.price > 50000 AND pd.price <= 100000 THEN 0.15
            WHEN pd.price > 100000 AND pd.price <= 300000 THEN 0.20
            WHEN pd.price > 300000 AND pd.price <= 500000 THEN 0.25
            WHEN pd.price > 500000 THEN 0.30
        END, 2) AS nett_profit,

    ft.rating AS rating_transaksi

FROM
    `kimia_farma.kf_final_transaction` ft

-- Menggabungkan tabel "kf_final_transaction" dengan "kf_product" berdasarkan nilai yang sama pada kolom "product_id"
JOIN
    `kimia_farma.kf_product` pd
ON
    ft.product_id = pd.product_id

-- Menggabungkan tabel "kf_final_transaction" dengan "kf_kantor_cabang" berdasarkan nilai yang sama pada kolom "branch_id"
JOIN
    `kimia_farma.kf_kantor_cabang` kc
ON
    ft.branch_id = kc.branch_id
ORDER BY 
    ft.transaction_id;
