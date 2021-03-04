CREATE DATABASE clinica;

USE clinica;

-------------------------------------------------------------------------------

CREATE TABLE CLINICA
(
	IdCLINICA		INT PRIMARY KEY IDENTITY,
	CNPJ			INT NOT NULL,
	ENDEREÇO		VARCHAR(200)
);

-------------------------------------------------------------------------------

CREATE TABLE DONO
(
	IdDONO		INT PRIMARY KEY IDENTITY,
	NOME		VARCHAR(200),
	CPF			INT NOT NULL
);

-------------------------------------------------------------------------------

CREATE TABLE TIPO
(
	IdTIPO		INT PRIMARY KEY IDENTITY,
	NOME		VARCHAR(200) NOT NULL,
);

-------------------------------------------------------------------------------

CREATE TABLE RAÇA
(
	IdRAÇA		INT PRIMARY KEY IDENTITY,
	IdTIPO		INT	FOREIGN KEY REFERENCES TIPO(IdTIPO),
	NOME		VARCHAR(200) NOT NULL,
);

-------------------------------------------------------------------------------

CREATE TABLE PET
(
	IdPET		INT PRIMARY KEY IDENTITY,
	IdDONO		INT	FOREIGN KEY REFERENCES DONO(IdDONO),
	IdRAÇA		INT	FOREIGN KEY REFERENCES RAÇA(IdRAÇA),
	NOME		VARCHAR(200) NOT NULL,
	NASCIMENTO	INT NOT NULL
);

-------------------------------------------------------------------------------

CREATE TABLE VETERINARIO
(
	IdVETERINARIO		INT PRIMARY KEY IDENTITY,
	IdCLINICA			INT	FOREIGN KEY REFERENCES CLINICA(IdCLINICA),
	NOME				VARCHAR(200) NOT NULL,
	CRMV				VARCHAR(200) NOT NULL,
);

-------------------------------------------------------------------------------

CREATE TABLE ATENDIMENTO
(
	IdATENDIMENTO		INT PRIMARY KEY IDENTITY,
	IdVETERINARIO		INT	FOREIGN KEY REFERENCES VETERINARIO(IdVETERINARIO),
	IdPET				INT	FOREIGN KEY REFERENCES PET(IdPET),
	NOME				VARCHAR(200) NOT NULL,
	DATA_DE_ATENDIMENTO	INT NOT NULL
);





