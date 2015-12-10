CREATE DATABASE IF NOT EXISTS ct_funcionario;
USE ct_funcionario;

CREATE TABLE IF NOT EXISTS login
(
	id_login int primary key auto_increment not null,
	-- IDs vindos de outras tabelas
	id_empresa int not null,
	id_usuario int not null,
	-- FIM dos IDs externos
	hr_acesso varchar(255) not null,
	dt_acesso varchar(255) not null,
	stt_acesso int not null -- 0 = não logou | 1 = já logou
);

CREATE TABLE IF NOT EXISTS empresa
(
	id_empresa int primary key auto_increment not null,
	nm_empresa varchar(255) not null,
	cpf varchar(255) not null,
	cnpj varchar(255) not null,
	tp_pagamento varchar(255) not null,
	dt_contrato varchar(255) not null,
	val_contrato varchar(255) not null,
	quant_func int not null,
	-- 'Quantidade de Gestores' decrementa da 'Quantidade de Funcionarios'
	quant_gest int not null,
	quant_cad_usados int not null
);

CREATE TABLE IF NOT EXISTS usuario
(
	id_usuario int primary key auto_increment not null,
	nm_completo varchar(255) not null,
	cargo_usuario varchar(255) not null,
	nm_usuario varchar(255) not null,
	senha_usuario varchar(255) not null,
	nivel_usuario varchar(255) not null -- 0 = Funcionario Comum | 1 = Funcionario Gestor
);

CREATE TABLE IF NOT EXISTS hora_trabalho
(
	id_hora_trabalho int primary key auto_increment not null,
	-- IDs externas
	id_empresa int not null,
	id_login int not null,
	latidade varchar(255) not null,
	longitude varchar(255) not null
);

-- INSERTs para testar


-- SELECTs
select * from login;
select * from empresa;
select * from usuario;
select * from hora_trabalho;