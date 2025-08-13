SELECT
    cod_pedido "Pedido",
    SUM(qtd_item)"Total de Itens"
FROM 
    pf1788.item_pedido
    -- where cod_pedido = 161487
GROUP BY 
    cod_pedido
HAVING
    SUM(qtd_item) < 300
ORDER BY 
    2 DESC