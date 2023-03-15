Select
    so.order_id,
    CONCAT(sc.first_name, ' ', sc.last_name) AS 'name',
    sc.city,
    sc.state,
    order_date,
    SUM(soi.quantity) as total_units,
    SUM(soi.quantity * soi.list_price) AS 'revenue',
    pp.product_name,
    pc.category_name,
    pb.brand_name,
    sst.store_name,
    CONCAT(sstf.first_name, ' ', sstf.last_name) AS 'Representative'
FROM
    sales.orders so
    JOIN sales.customers sc ON so.customer_id = sc.customer_id
    JOIN sales.order_items soi ON so.order_id = soi.order_id
    JOIN production.products pp ON soi.product_id = pp.product_id
    JOIN production.categories pc ON pp.category_id = pc.category_id
    JOIN production.brands pb ON pp.brand_id = pb.brand_id
    JOIN sales.stores sst ON so.store_id = sst.store_id
    JOIN sales.staffs sstf ON so.staff_id = sstf.staff_id
GROUP BY
    so.order_id,
    CONCAT(sc.first_name, ' ', sc.last_name),
    sc.city,
    sc.state,
    so.order_date,
    pp.product_name,
    pc.category_name,
    pb.brand_name,
    sst.store_name,
    CONCAT(sstf.first_name, ' ', sstf.last_name)