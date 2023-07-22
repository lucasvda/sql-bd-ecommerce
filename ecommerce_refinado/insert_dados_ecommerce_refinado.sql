use ecommerce_refinado;

-- inserindo valores na tabela clientesPF
insert into clientes (pNome, nomeMeio, sobrenome, endereco, dataNascimento) 
			  values ('Lucas', 'V', 'Araujo', 'rua 1, 1 - bairro 1 - São Paulo/SP', '1990-04-15'),
					 ('Diego', 'D', 'Venancio', 'rua 2, 2 - bairro 2 - São Paulo/SP', '1992-06-19'),
                     ('Maria', 'O', 'Castro', 'rua 3, 3 - bairro 3 - São Paulo/SP', '1964-12-05'),
                     ('Luiz', 'V', 'Araujo', 'rua 4, 4 - bairro 4 - São Paulo/SP', '1968-05-07'),
                     ('Alice', 'S', 'Araujo', 'rua 5, 5 - bairro 5 - São Paulo/SP', '2016-09-10'),
                     ('Mayara', 'N', 'Silva', 'rua 6, 6 - bairro 6 - São Paulo/SP', '1988-09-09');

-- consultando os valores inseridos na tabela clientes                    
-- select * from clientes;

-- inserindo valores na tabela tipoClientes
insert into tipoClientes (numero, tipo) 
			  values (123456789112231, 'CNPJ'),
					 (12345678911, 'CPF'),
                     (123456789112232, 'CNPJ'),
                     (12345678912, 'CPF'),
                     (123456789112233, 'CNPJ'),
                     (12345678914, 'CPF');

-- consultando os valores inseridos na tabela tipoClientes                    
-- select * from tipoClientes;

-- inserindo valores na tabela pagamentos
insert into pagamentos (tipoPagamento) 
			  values ('Cartão'),
					 ('PIX'),
					 ('Dois Cartões'),
                     ('Boleto'),
					 ('Cartão'),
                     ('PIX'),
					 ('Cartão'),
                     ('Dois Cartões'),
					 ('Boleto'),
                     ('PIX'),
					 ('Boleto'),
                     ('Dois Cartões'),
					 ('PIX');

-- consultando os valores inseridos na tabela pagamentos                    
-- select * from pagamentos;
                     
-- inserindo valores na tabela produtos
insert into produtos (nomeProduto, classificacaoCrianca, categoria, descricao, valor, avaliacao, dimensoes)
			  values ('Celular', default, 'Eletrônico', 'Aparelho muito bom com 128gb', 1999.99, 6, '12x8x2'),
					 ('HotWheels', true, 'Brinquedos', 'Autorama HotWheels', 299.99, 7, null),
                     ('Blusa', default, 'Vestimenta', 'Moletom do DeadFish', 99.99, 8, null),
                     ('Whey', default, 'Alimentos', '25g de proteína por dose', 89.99, 9, null),
                     ('Sofá', default, 'Móveis', 'Reclinável e retrátil', 1989.99, 10, '4x5x3'),
                     ('Barra de Proteina', default, 'Alimentos', '25g de proteína por dose', 9.99, 9, null);
                     
-- consultando os valores inseridos na tabela produtos                
-- select * from produtos;

-- inserindo valores na tabela entregas
insert into entregas (idEntrega, statusEntrega, codRastreio)
			  values (1, default, 1234567890),
					 (2, default, 1234567891),
                     (3, default, 1234567892),
                     (4, default, 1234567893),
                     (5, default, 1234567894),
                     (6, default, 1234567895),
                     (7, default, 1234567896),
                     (8, default, 1234567897),
                     (9, default, 1234567898),
                     (10, default, 1234567899),
                     (11, default, 1234567810),
                     (12, default, 1234567811),
                     (13, default, 1234567812),
                     (14, default, 1234567813),
                     (15, default, 1234567814);
                     
-- consultando os valores inseridos na tabela entregas                
-- select * from entregas;

-- inserindo valores na tabela pedidos
insert into pedidos (idPedidoPagamento, idPedidoCliente, descricao, frete)
			 values (1,2, 'Compra por app', 20),
					(1,2, 'Compra por website', 30),
                    (1,3, 'Compra por website com cupom de desconto', 40),
                    (1,3, 'Compra por app com cupom de desconto', 50),
                    (2,3, 'Compra por app', 20),
                    (2,4, 'Compra por website', 30),
                    (2,4, 'Compra por website com cupom de desconto', 40),
                    (2,5, 'Compra por app com cupom de desconto', 50),
                    (3,6, 'Compra por app', 20),
                    (3,3, 'Compra por website com cupom de desconto', 40),
                    (3,1, 'Compra por app com cupom de desconto', 50),
                    (4,2, 'Compra por website', 30),
                    (4,5, 'Compra por app', 20),
                    (5,4, 'Compra por website com cupom de desconto', 40),
                    (6,6, 'Compra por app com cupom de desconto', 50);
                    
-- consultando os valores inseridos na tabela pedidos                
-- select * from pedidos;

-- consultando os valores inseridos na tabela estoquesProdutos
insert into estoquesProdutos (quantidade, localidade)
			values (1, 'Canoas'), 
				   (2, 'Campinas'), 
                   (3, 'Deodoro'), 
                   (4, 'Ouro Preto'), 
                   (5, 'Trindade');

-- consultando os valores inseridos na tabela estoquesProdutos               
-- select * from estoquesProdutos;

-- inserindo valores na tabela pedidos
insert into fornecedores (cnpj, razaoSocial, contato)
			values ('123456789123451', 'Brinquedos Legais', '11911111111'),
				   ('123456789123452', 'Suplementos Forte', '11922222222'),
                   ('123456789123453', 'Móveis Sob Medida', '11933333333'),
                   ('123456789123454', 'Eletrônicos TecnoCell', '11944444444'),
                   ('123456789123455', 'Moda Moderna', '11955555555');
                   
-- consultando os valores inseridos na tabela fornecedores              
-- select * from fornecedores;

-- inserindo valores na tabela vendedores
insert into vendedores (razaoSocial, cnpj, cpf, localidade, nomeFantasia)
			values ('Vende Brinquedos','123456789123456', '98765432191', 'São Paulo', 'Brinquedos Happy'),
				   ('Vende Suplementos','123456789123457', '98765432192', 'Minas Gerais', 'Suplementos Emagrecer'),
                   ('Vende Móveis','123456789123458', '98765432193', 'Bahia', 'Móveis Clássicos'),
                   ('Vende Eletrônicos','123456789123459', '98765432194', 'Rio Grande do Sul', 'Eletrônicos D+'),
                   ('Vende Moda','123456789123450', '98765432195', 'Rio de Janeiro', 'Moda Linda');
                   
-- consultando os valores inseridos na tabela vendedores              
-- select * from vendedores;

-- inserindo valores na tabela produtosVendedores
insert into produtosVendedores (idProdutoVendedorVendedor, idProdutoVendedorProduto, quantidade)
			values (1, 2, 10),				
                   (2, 4, 7),
                   (3, 5, 2),
                   (4, 1, 6),
                   (5, 3, 10);

-- consultando os valores inseridos na tabela produtosVendedores             
-- select * from produtosVendedores;

-- inserindo valores na tabela produtosPedidos
insert into produtosPedidos (idProdutoPedidoProduto, idProdutoPedidoPedido, quantidade, statusPedido)
			values (1, 1, 1, default),
				   (1, 4, 1, default),
                   (2, 5, 1, 'Sem estoque'),
                   (3, 10, 1, default),
                   (4, 3, 1, 'Sem estoque'),
                   (5, 7, 1, default);

-- consultando os valores inseridos na tabela produtosPedidos             
-- select * from produtosPedidos;
                   
-- inserindo valores na tabela estoquesLocalidades
insert into estoquesLocalidades (idEstoqueLocalidadeProduto, idEstoqueLocalidadeEstoque, localidade)
			values (1, 2, 'São Paulo'),				
                   (2, 4, 'Minas Gerais'),
                   (3, 5, 'Bahia'),
                   (4, 1, 'Rio Grande do Sul'),
                   (5, 3, 'Rio de Janeiro');

-- consultando os valores inseridos na tabela estoquesLocalidades             
-- select * from estoquesLocalidades;                    
                    
-- inserindo valores na tabela produtosFornecedores
insert into produtosFornecedores (idProdutoFornecedorProduto, idProdutoFornecedorFornecedor, quantidade)
			values (1, 4, 10),				
                   (2, 1, 7),
                   (3, 5, 2),
                   (4, 2, 6),
                   (5, 3, 10),
                   (6, 2, 10);

-- consultando os valores inseridos na tabela produtosFornecedores             
-- select * from produtosFornecedores;