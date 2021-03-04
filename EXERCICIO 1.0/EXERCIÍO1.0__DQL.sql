USE filmes;

SELECT * FROM generos;
SELECT * FROM filmes;

-----INNER JOIN----
SELECT filmes.IdFilme, filmes.TITULO, generos.NOME As GENERO FROM filmes
INNER JOIN  generos
ON filmes.IdGenero = generos.IdGenero

-----LEFT JOIN------
SELECT * FROM filmes
LEFT JOIN generos
ON filmes.TITULO = generos.NOME;--null

---RIGHT JOIN-------
SELECT * FROM filmes
RIGHT JOIN generos
ON filmes.TITULO = generos.NOME;--null