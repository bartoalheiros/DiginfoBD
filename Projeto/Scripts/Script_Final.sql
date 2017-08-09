create schema assistech;
use assistech;

CREATE TABLE EMPRESA ( 
CNPJ BIGINT UNSIGNED,
Razao_social VARCHAR(20), 
Endereco VARCHAR(30) NOT NULL, 
Fone VARCHAR(15) NOT NULL, 
estado VARCHAR(50),
CONSTRAINT PRIMARY KEY(CNPJ)
);


CREATE TABLE UNIDADE_DE_SUPORTE ( 
COD_Unid_Suporte TINYINT UNSIGNED, 
CNPJ BIGINT UNSIGNED, 
Nro_funcionarios INT, 
Nome VARCHAR(50), 
Matriz VARCHAR(20), 
endereco VARCHAR(50),
FONE VARCHAR(16),
CONSTRAINT fk_unid_suporte_empresa(CNPJ) references EMPRESA(CNPJ)
);

CREATE TABLE FUNCIONARIO (
Matricula VARCHAR(13), 
CPF BIGINT, 
Matricula_supervisor VARCHAR(13) NOT NULL, 
CNPJ BIGINT UNSIGNED NOT NULL UNIQUE, 
Login VARCHAR(15) NOT NULL UNIQUE, 
Senha VARCHAR(15) NOT NULL UNIQUE, 
Nome VARCHAR(30), 
Cod_Contracheque BIGINT UNSIGNED UNIQUE, Email, Carga_hora)
FK (CNPJ) referencia UNIDADE_DE_SUPORTE (CNPJ_Empresa)
FK (Matricula_supervisor) referencia FUN_SUPERVISOR (Matricula)
