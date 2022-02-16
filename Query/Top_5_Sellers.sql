SELECT
s.seller_id,
COUNT(o.order_id) as Total_de_Pedidos,
s.seller_city,
FROM OLIST.olist_order_item as o
JOIN OLIST.olist_sellers as s ON o.seller_id = s.seller_id
GROUP BY 1,3
ORDER BY 2 DESC
LIMIT 5;