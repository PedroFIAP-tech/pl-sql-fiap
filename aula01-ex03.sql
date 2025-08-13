select 
    distinct a.Cod_produto, 
    b.Nom_Produto 
from pf1788.Produto b
    inner join pf1788.item_pedido a on (a.cod_produto = b.cod_produto)
order by
    a.cod_produto;
    
    
select 
    a.Cod_produto, 
    b.Nom_Produto 
from pf1788.Produto a
    inner join pf1788.item_pedido b on (a.cod_produto = b.cod_produto)
group by 
    a.Cod_produto,
    b.Nom_Produto
order by
    a.cod_produto;


select 
    a.nom_cliente, 
    count(b.cod_pedido) 
from 
    pf1788.Cliente a
    left join pf1788.Pedido b on (a.cod_cliente = b.cod_cliente)
group by  
    a.nom_cliente
order by 2 desc;


select * from pf1788.Pedido

select * from pf1788.Cliente


select 
est.nom_estado,
cit.nom_cidade 
from pf1788.Estado est
left join pf1788.Cidade cit on (cit.cod_estado = est.cod_estado)