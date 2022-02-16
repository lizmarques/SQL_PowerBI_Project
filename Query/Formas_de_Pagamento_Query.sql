SELECT 
payment_type as Formas_de_Pagamento,
COUNT(payment_type) as Quantidade
FROM OLIST.olist_order_payments
GROUP BY 1
ORDER BY Quantidade DESC;