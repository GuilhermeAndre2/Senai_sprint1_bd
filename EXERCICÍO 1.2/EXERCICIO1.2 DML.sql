USE locadora;

INSERT INTO empresa(CNPJ, ENDEREÇO)
VALUES		(12345, 'RUA 1');

INSERT INTO cliente(NOME, CPF, ENDEREÇO, EMAIL)
VALUES		('GUILHERME', 12345, 'RUA 2', 'GMAIL');

INSERT INTO modelo(PLACA, COR)
VALUES		('FUSION', 'AZUL'),
			('ONIX', 'PRETO'),
			('X1', 'PRATA'),
			('ASX', 'PRATA'),
			('812', 'VERMELHO'),
			('CERATO', 'BRANCO'),
			('HILUX', 'PRETO'),
			('CIVIC', 'PRETO');

INSERT INTO marca(NOME)
VALUES		('FORD'),
			('CHEVROLET'),
			('BMW'),
			('MITSUBISH'),
			('FERRARI'),
			('KIA'),
			('TOYOTA'),
			('HONDA');

INSERT INTO veiculo(IdEMPRESA, IdMODELO, IdMARCA, PLACA)
VALUES				(1, 1, 1, 'ABC-123'),
					(1, 2, 2, 'DEF-456'),
					(1, 3, 3, 'GHI-789'),
					(1, 4, 4, 'JKL-246'),
					(1, 5, 5, 'MKO-135'),
					(1, 6, 6, 'PQR-791'),
					(1, 7, 7, 'STU-369'),
					(1, 8, 8, 'VWX-482');

INSERT INTO aluguel(IdCLIENTE, IdVEICULO, DATAINICIO, DATAFIM)
VALUES		(1, 1, 2021, 2022),
			(1, 2, 2022, 2023),
			(1, 3, 2023, 2024),
			(1, 4, 2024, 2025),
			(1, 5, 2025, 2026),
			(1, 6, 2026, 2027),
			(1, 7, 2027, 2028),
			(1, 8, 2028, 2029);

