SELECT 
p.product_category_name,
ROUND(SUM(o.price),2) as preco,
FROM OLIST.olist_order_item as o
JOIN OLIST.olist_products as p on  o.product_id = p.product_id
GROUP BY 1
ORDER BY 2 ASC
LIMIT 5;