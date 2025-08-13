SELECT DISTINCT
        a.cod_produto,  
        b.nom_produto
FROM 
    pf1788.item_pedido a
inner JOIN 
    pf1788.produto b
ON a.cod_produto = b.cod_produto

ORDER BY
    a.cod_produto;