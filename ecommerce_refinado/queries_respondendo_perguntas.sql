-- Quantos pedidos foram feitos por cada cliente?
select concat(c.pNome, ' ', c.nomeMeio, '. ', c.sobrenome) as Nome_Completo, count(*) as Quantidade
from clientes c
join pedidos p on c.idCliente = p.idPedidoCliente
group by c.idCliente;

-- Quantos clientes fizeram mais que 2 pedidos?
select concat(c.pNome, ' ', c.nomeMeio, '. ', c.sobrenome) as Nome_Completo, count(*) as Quantidade
from clientes c
join pedidos p on c.idCliente = p.idPedidoCliente
group by c.idCliente having Quantidade > 2;

-- Algum vendedor também é fornecedor?
select f.razaoSocial, f.cnpj
from fornecedores f, vendedores v
where f.cnpj = v.cnpj;

-- Relação de produtos fornecedores e estoques;
select f.razaoSocial, p.nomeProduto, e.quantidade, e.localidade, el.localidade
from fornecedores f
join produtosFornecedores pf on f.idFornecedor = pf.idProdutoFornecedorFornecedor        
join produtos p on p.idProduto = pf.idProdutoFornecedorProduto
join estoquesLocalidades el on el.idEstoqueLocalidadeProduto = p.idProduto
join estoquesProdutos e on el.idEstoqueLocalidadeEstoque = e.idEstoqueProduto
order by e.quantidade;

-- Relação de nomes dos fornecedores e nomes dos produtos;
select f.razaoSocial as Fornecedor, p.nomeProduto as Produto
from fornecedores f
join produtosFornecedores pf on f.idFornecedor = pf.idProdutoFornecedorFornecedor
join produtos p on p.idProduto = pf.idProdutoFornecedorProduto;