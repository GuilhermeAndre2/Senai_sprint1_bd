CREATE DATABASE pessoa;

USE pessoa;

CREATE TABLE pessoa
(
	IdPESSOA		INT PRIMARY KEY IDENTITY,
	NOME			VARCHAR(200) NOT NULL,
	CPF				INT NOT NULL
);

CREATE TABLE CNH
(
	IdCNH			INT PRIMARY KEY IDENTITY,
	IdPESSOA		INT	FOREIGN KEY REFERENCES pessoa(IdPESSOA),
	NUMEROCNH		INT NOT NULL,
	VALIDADE		INT NOT NULL,
);

CREATE TABLE TELEFONE
(
	IdTELEFONE		INT PRIMARY KEY IDENTITY,
	IdPESSOA		INT	FOREIGN KEY REFERENCES pessoa(IdPESSOA),
	NUMERO			INT NOT NULL,
);

CREATE TABLE EMAILS
(
	IdEMAIL			INT PRIMARY KEY IDENTITY,
	IdPESSOA		INT	FOREIGN KEY REFERENCES pessoa(IdPESSOA),
	EMAIL			TEXT
);