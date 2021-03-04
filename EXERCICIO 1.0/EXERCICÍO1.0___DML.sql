USE filmes;

INSERT INTO generos(NOME)
VALUES			   ('AÇÃO'),
				   ('ROMANCE'),
				   ('AVENTURA'),
				   ('DOCUMENTARIO'),
				   ('FICÇÃO CIENTIFICA');

INSERT INTO filmes(TITULO, IdGenero)
VALUES			   ('HARRY POTTER', 5),
				   ('VINGADORES', 1),
				   ('NOSSO MUNDO', 4),
				   ('PIRATAS DO CARIBE', 3),
				   ('DIARIO DE UMA PAIXÃO', 2);

DBCC CHECKIDENT('generos', RESEED, 0)
DBCC CHECKIDENT('filmes', RESEED, 0)







