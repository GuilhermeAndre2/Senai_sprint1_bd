USE locadora;

SELECT * FROM empresa;
SELECT * FROM cliente;
SELECT * FROM modelo;
SELECT * FROM marca;
SELECT * FROM veiculo;
SELECT * FROM aluguel;

SELECT cliente.IdCLIENTE, cliente.NOME, cliente.CPF, modelo.PLACA FROM cliente
INNER JOIN  modelo
ON cliente.IdCLIENTE = modelo.IdMODELO
