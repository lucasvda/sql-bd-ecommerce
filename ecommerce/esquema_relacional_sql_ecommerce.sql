-- criação do banco de dados para un E-commerce
-- drop database ecommerce;
create database ecommerce;
use ecommerce;

-- criar tabela cliente
create table clientes(
	idCliente int not null auto_increment primary key,
    pNome varchar(10) not null,
    nomeMeio char(3),
    sobrenome varchar(20),
    cpf char(11) not null,
    endereco varchar(45),
    dataNascimento date not null,
    constraint unique_cpf_cliente unique(cpf)    
);
alter table clientes auto_increment=1;

-- criar tabela produto
create table produtos(
	idProduto int auto_increment primary key,
    nomeProduto varchar(10) not null,
    classificacaoCrianca bool default false,
    categoria enum('Eletrônico', 'Vestimenta', 'Brinquedos', 'Alimentos', 'Móveis') not null,
    descricao varchar(255),
    valor float not null,
    avaliacao float not null default 0,
    dimensoes varchar(10)
);
alter table produtos auto_increment=1;

-- criar tabela pedido
create table pedidos(
	idPedido int auto_increment primary key,
    idPedidoCliente int,
    statusPedido enum('Em andamento', 'Em processando', 'Enviado', 'Entregue') default 'Em processando',
    descricao varchar(255),
    frete float default 10,
    pagamento bool default false,
    constraint fk_pedido_cliente foreign key (idPedidoCliente) references clientes(idCliente)
);
alter table pedidos auto_increment=1;

-- criar tabela estoque
create table estoquesProdutos(
	idEstoqueProduto int auto_increment primary key,
    quantidade int default 0,
    localidade varchar(45)
);
alter table estoquesProdutos auto_increment=1;

-- criar tabela fornecedor
create table fornecedores(
	idFornecedor int auto_increment primary key,
    cnpj char(15) not null,
    razaoSocial varchar(45) not null,
    contato char(11) not null,
    constraint unique_cnpj_fornecedor unique (cnpj),
    constraint unique_razaoSocial_fornecedor unique (razaoSocial)
);
alter table fornecedores auto_increment=1;

-- criar tabela vendedor
create table vendedores(
	idVendedor int auto_increment primary key,
    razaoSocial varchar(45) not null,
    cnpj char(15),
    cpf char(11),
    localidade varchar(45),
    nomeFantasia varchar(45),
    constraint unique_razaoSocial_vendedor unique (razaoSocial),
    constraint unique_cnpj_vendedor unique (cnpj),
    constraint unique_cpf_vendedor unique (cpf)
);
alter table vendedores auto_increment=1;

-- criar tabela Produto / Vendedor
create table produtosVendedores(
	idProdutoVendedorVendedor int,
    idProdutoVendedorProduto int,
    quantidade int default 1,
    primary key (idProdutoVendedorVendedor, idProdutoVendedorProduto),
    constraint fk_produtoVendedor_vendedor foreign key (idProdutoVendedorVendedor) references vendedores(idVendedor),
    constraint fk_produtoVendedor_produto foreign key (idProdutoVendedorProduto) references produtos(idProduto)
);

-- criar tabela Produto / Pedido
create table produtosPedidos(
	idProdutoPedidoProduto int,
    idProdutoPedidoPedido int,
    quantidade int default 1,
    statusPedido enum('Disponível', 'Sem estoque') default 'Disponível',
    primary key (idProdutoPedidoProduto, idProdutoPedidoPedido),
    constraint fk_produtoPedido_produto foreign key (idProdutoPedidoProduto) references produtos(idProduto),
    constraint fk_produtoPedido_pedido foreign key (idProdutoPedidoPedido) references pedidos(idPedido)
);

-- criar tabela Estoque / Localidade
create table estoquesLocalidades(
	idEstoqueLocalidadeProduto int,
    idEstoqueLocalidadeEstoque int,
    localidade varchar(45) not null,
    primary key (idEstoqueLocalidadeProduto, idEstoqueLocalidadeEstoque),
    constraint fk_estoqueLocalidade_produto foreign key (idEstoqueLocalidadeProduto) references produtos(idProduto),
    constraint fk_estoqueLocalidade_estoque foreign key (idEstoqueLocalidadeEstoque) references estoquesProdutos(idEstoqueProduto)
);

-- criar tabela Produto / Fornecedor
create table produtosFornecedores(
	idProdutoFornecedorProduto int,
    idProdutoFornecedorFornecedor int,
    quantidade int not null,
    primary key (idProdutoFornecedorProduto, idProdutoFornecedorFornecedor),
    constraint fk_produtoFornecedor_produto foreign key (idProdutoFornecedorProduto) references produtos(idProduto),
    constraint fk_produtoFornecedor_fornecedor foreign key (idProdutoFornecedorFornecedor) references fornecedores(idFornecedor)
);