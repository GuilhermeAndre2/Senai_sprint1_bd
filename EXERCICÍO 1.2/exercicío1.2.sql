CREATE DATABASE locadora;

USE locadora;

---------------------------------------------------------------------

CREATE TABLE empresa
(
	IdEMPRESA	INT PRIMARY KEY IDENTITY,
	CNPJ		INT NOT NULL,
	ENDEREÇO	VARCHAR(200) NOT NULL
);

---------------------------------------------------------------------

CREATE TABLE cliente
(
	IdCLIENTE	INT PRIMARY KEY IDENTITY,
	NOME		VARCHAR(200) NOT NULL,
	CPF			INT NOT NULL,
	ENDEREÇO	VARCHAR(200) NOT NULL,
	EMAIL		VARCHAR(250) NOT NULL
);

---------------------------------------------------------------------

CREATE TABLE modelo
(
	IdMODELO	INT PRIMARY KEY IDENTITY,
	PLACA		VARCHAR(6),
	COR			VARCHAR(50)
);

---------------------------------------------------------------------

CREATE TABLE marca
(
	IdMARCA		INT PRIMARY KEY IDENTITY,
	NOME		VARCHAR(200) NOT NULL
);

---------------------------------------------------------------------

CREATE TABLE veiculo
(
	IdVEICULO		INT PRIMARY KEY IDENTITY,
	IdEMPRESA		INT FOREIGN KEY REFERENCES empresa(IdEMPRESA),
	IdMODELO		INT FOREIGN KEY REFERENCES modelo(IdMODELO),
	IdMARCA			INT FOREIGN KEY REFERENCES marca(IdMARCA),
	PLACA			VARCHAR(10)
);

---------------------------------------------------------------------

CREATE TABLE aluguel
(
	IdALUGUEL		INT PRIMARY KEY IDENTITY,
	IdCLIENTE		INT FOREIGN KEY REFERENCES cliente(IdCLIENTE),
	IdVEICULO		INT FOREIGN KEY REFERENCES veiculo(IdVEICULO),
	DATAINICIO		INT,
	DATAFIM			INT
);

