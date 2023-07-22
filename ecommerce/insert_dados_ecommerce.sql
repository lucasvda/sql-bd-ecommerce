use ecommerce;

-- inserindo valores na tabela clientes
insert into clientes (pNome, nomeMeio, sobrenome, cpf, endereco, dataNascimento) 
			  values ('Lucas', 'V', 'Araujo', 12345678911, 'rua 1, 1 - bairro 1 - São Paulo/SP', '1990-04-15'),
					 ('Diego', 'D', 'Venancio', 12345678912, 'rua 2, 2 - bairro 2 - São Paulo/SP', '1992-06-19'),
                     ('Maria', 'O', 'Castro', 12345678913, 'rua 3, 3 - bairro 3 - São Paulo/SP', '1964-12-05'),
                     ('Luiz', 'V', 'Araujo', 12345678914, 'rua 4, 4 - bairro 4 - São Paulo/SP', '1968-05-07'),
                     ('Alice', 'S', 'Araujo', 12345678915, 'rua 5, 5 - bairro 5 - São Paulo/SP', '2016-09-10'),
                     ('Mayara', 'N', 'Silva', 12345678916, 'rua 6, 6 - bairro 6 - São Paulo/SP', '1988-09-09');

-- consultando os valores inseridos na tabela clientes                    
select * from clientes;
                     
-- inserindo valores na tabela produtos
insert into produtos (nomeProduto, classificacaoCrianca, categoria, descricao, valor, avaliacao, dimensoes)
			  values ('Celular', default, 'Eletrônico', 'Aparelho muito bom com 128gb', 1999.99, 6, '12x8x2'),
					 ('HotWheels', true, 'Brinquedos', 'Autorama HotWheels', 299.99, 7, null),
                     ('Blusa', default, 'Vestimenta', 'Moletom do DeadFish', 99.99, 8, null),
                     ('Whey', default, 'Alimentos', '25g de proteína por dose', 89.99, 9, null),
                     ('Sofá', default, 'Móveis', 'Reclinável e retrátil', 1989.99, 10, '4x5x3');
                     
-- consultando os valores inseridos na tabela produtos                
select * from produtos;

-- inserindo valores na tabela pedidos
insert into pedidos (idPedidoCliente, statusPedido, descricao, frete, pagamento)
			 values (1, 'Em andamento', 'Foi entregue na trasnportadora', 20, default),
					(1, 'Em processando', 'Aguardando o pagamento', 30, default),
                    (1, 'Enviado', 'Objeto em trânsito para o cliente', 40, default),
                    (1, 'Entregue', 'Objeto entregue para o cliente', 50, default),
                    (2, 'Em andamento', 'Foi entregue na trasnportadora', 20, default),
                    (2, 'Em processando', 'Aguardando o pagamento', 30, default),
                    (2, 'Enviado', 'Objeto em trânsito para o cliente', 40, default),
                    (2, 'Entregue', 'Objeto entregue para o cliente', 50, default),
                    (3, 'Em andamento', 'Foi entregue na trasnportadora', 20, default),
                    (3, 'Enviado', 'Objeto em trânsito para o cliente', 40, default),
                    (3, 'Entregue', 'Objeto entregue para o cliente', 50, default),
                    (4, 'Em processando', 'Aguardando o pagamento', 30, default),
                    (4, 'Em andamento', 'Foi entregue na trasnportadora', 20, default),
                    (5, 'Enviado', 'Objeto em trânsito para o cliente', 40, default),
                    (6, 'Entregue', 'Objeto entregue para o cliente', 50, default);
                    
-- consultando os valores inseridos na tabela pedidos                
select * from pedidos;

-- consultando os valores inseridos na tabela estoquesProdutos
insert into estoquesProdutos (quantidade, localidade)
			values (1, 'Canoas'), 
				   (2, 'Campinas'), 
                   (3, 'Deodoro'), 
                   (4, 'Ouro Preto'), 
                   (5, 'Trindade');

-- consultando os valores inseridos na tabela estoquesProdutos               
select * from estoquesProdutos;

-- inserindo valores na tabela pedidos
insert into fornecedores (cnpj, razaoSocial, contato)
			values ('123456789123451', 'Brinquedos Legais', '11911111111'),
				   ('123456789123452', 'Suplementos Forte', '11922222222'),
                   ('123456789123453', 'Móveis Sob Medida', '11933333333'),
                   ('123456789123454', 'Eletrônicos TecnoCell', '11944444444'),
                   ('123456789123455', 'Moda Moderna', '11955555555');
                   
-- consultando os valores inseridos na tabela fornecedores              
select * from fornecedores;

-- inserindo valores na tabela vendedores
insert into vendedores (razaoSocial, cnpj, cpf, localidade, nomeFantasia)
			values ('Vende Brinquedos','123456789123456', '98765432191', 'São Paulo', 'Brinquedos Happy'),
				   ('Vende Suplementos','123456789123457', '98765432192', 'Minas Gerais', 'Suplementos Emagrecer'),
                   ('Vende Móveis','123456789123458', '98765432193', 'Bahia', 'Móveis Clássicos'),
                   ('Vende Eletrônicos','123456789123459', '98765432194', 'Rio Grande do Sul', 'Eletrônicos D+'),
                   ('Vende Moda','123456789123450', '98765432195', 'Rio de Janeiro', 'Moda Linda');
                   
-- consultando os valores inseridos na tabela vendedores              
select * from vendedores;

-- inserindo valores na tabela produtosVendedores
insert into produtosVendedores (idProdutoVendedorVendedor, idProdutoVendedorProduto, quantidade)
			values (1, 2, 10),				
                   (2, 4, 7),
                   (3, 5, 2),
                   (4, 1, 6),
                   (5, 3, 10);

-- consultando os valores inseridos na tabela produtosVendedores             
select * from produtosVendedores;

-- inserindo valores na tabela produtosPedidos
insert into produtosPedidos (idProdutoPedidoProduto, idProdutoPedidoPedido, quantidade, statusPedido)
			values (1, 1, 1, default),
				   (1, 4, 1, default),
                   (2, 5, 1, 'Sem estoque'),
                   (3, 10, 1, default),
                   (4, 3, 1, 'Sem estoque'),
                   (5, 7, 1, default);

-- consultando os valores inseridos na tabela produtosPedidos             
select * from produtosPedidos;
                   
-- inserindo valores na tabela estoquesLocalidades
insert into estoquesLocalidades (idEstoqueLocalidadeProduto, idEstoqueLocalidadeEstoque, localidade)
			values (1, 2, 'São Paulo'),				
                   (2, 4, 'Minas Gerais'),
                   (3, 5, 'Bahia'),
                   (4, 1, 'Rio Grande do Sul'),
                   (5, 3, 'Rio de Janeiro');

-- consultando os valores inseridos na tabela estoquesLocalidades             
select * from estoquesLocalidades;                    
                    
-- inserindo valores na tabela produtosFornecedores
insert into produtosFornecedores (idProdutoFornecedorProduto, idProdutoFornecedorFornecedor, quantidade)
			values (1, 4, 10),				
                   (2, 1, 7),
                   (3, 5, 2),
                   (4, 2, 6),
                   (5, 3, 10);

-- consultando os valores inseridos na tabela produtosFornecedores             
select * from produtosFornecedores;                    
                    
                    
                    
                    
                    
                    
                    
                    
                    