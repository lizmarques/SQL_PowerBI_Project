SELECT
c.customer_state,
COUNT(c.customer_state) as Total_de_Pedidos,
FROM OLIST.olist_orders as o
JOIN OLIST.olist_order_item as i ON o.order_id = i.order_id
JOIN OLIST.olist_customers as c ON o.customer_id = c.customer_id
WHERE i.seller_id = "6560211a19b47992c3666cc44a7e94c0"
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3;