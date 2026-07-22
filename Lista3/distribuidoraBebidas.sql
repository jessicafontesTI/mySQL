create database db_distribuidora_bebidas;

use db_distribuidora_bebidas;

create table tb_categoria (
	id int auto_increment,
	tipo varchar(25) not null,
	disponivel boolean not null,
	descricao varchar(255),
	primary key(id)
);

create table tb_produto (
	id int auto_increment,
	nome varchar(50) not null,
	estoque int not null,
	preco decimal(10,2) not null,
	categoria_id int not null,

	primary key(id),
	foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria (tipo, disponivel, descricao) values ("Refrigerante", true, "Bebidas gaseificadas disponíveis em diversos sabores.");
insert into tb_categoria (tipo, disponivel, descricao) values ("Suco", true, "Sucos naturais e industrializados.");
insert into tb_categoria (tipo, disponivel, descricao) values ("Água", true, "Água mineral com ou sem gás.");
insert into tb_categoria (tipo, disponivel, descricao) values ("Energético", true, "Bebidas energéticas para maior disposição.");
insert into tb_categoria (tipo, disponivel, descricao) values ("Outros", true, "Demais bebidas.");

insert into tb_produto (nome, estoque, preco, categoria_id) values ("Coca-Cola 2L", 120, 12.99, 1);
insert into tb_produto (nome, estoque, preco, categoria_id) values ("Guaraná Antarctica 2L", 95, 10.99, 1);
insert into tb_produto (nome, estoque, preco, categoria_id) values ("Suco de Laranja", 80, 8.50, 2);
insert into tb_produto (nome, estoque, preco, categoria_id) values ("Suco de Uva", 70, 9.90, 2);
insert into tb_produto (nome, estoque, preco, categoria_id) values ("Água Mineral", 200, 3.50, 3);
insert into tb_produto (nome, estoque, preco, categoria_id) values ("Água com Gás", 150, 4.00, 3);
insert into tb_produto (nome, estoque, preco, categoria_id) values ("Red Bull", 60, 14.99, 4);
insert into tb_produto (nome, estoque, preco, categoria_id) values ("Monster Energy", 50, 13.99, 4);

select * from tb_produto where preco > 10.00;
select * from tb_produto where preco >= 3.00 and preco <= 10.00;
select * from tb_produto where nome like "Co%";

select nome, preco, estoque as produtos_disponiveis, tb_categoria.tipo as categoria
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select nome, preco, estoque as produtos_disponiveis, tb_categoria.tipo as categoria
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.tipo like "%Refrigerante%";
