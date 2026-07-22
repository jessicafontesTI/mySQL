create database db_concessionaria;

use db_concessionaria;

create table tb_carros(
	id bigint auto_increment,
	modelo varchar(50) not null,
	preco decimal(10,2) not null,
	quantidade bigint not null,
	marca varchar(50) not null,
	primary key (id)
);

insert into tb_carros(modelo, preco, quantidade, marca) values ("Onix", 85000.00, 5, "Chevrolet");
insert into tb_carros(modelo, preco, quantidade, marca) values ("HB20", 82000.00, 4, "Hyundai");
insert into tb_carros(modelo, preco, quantidade, marca) values ("Argo", 79000.00, 6, "Fiat");
insert into tb_carros(modelo, preco, quantidade, marca) values ("Corolla", 155000.00, 3, "Toyota");
insert into tb_carros(modelo, preco, quantidade, marca) values ("Civic", 165000.00, 2, "Honda");
insert into tb_carros(modelo, preco, quantidade, marca) values ("T-Cross", 145000.00, 4, "Volkswagen");
insert into tb_carros(modelo, preco, quantidade, marca) values ("Compass", 180000.00, 3, "Jeep");
insert into tb_carros(modelo, preco, quantidade, marca) values ("Tracker", 140000.00, 5, "Chevrolet");

select * from tb_carros where preco > 100000;
select * from tb_carros where preco < 100000;

update tb_carros set quantidade = 9 where id = 1;

select * from tb_carros;

SELECT * FROM tb_carros;
