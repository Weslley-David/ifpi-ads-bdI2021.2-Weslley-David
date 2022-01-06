--1) Nome dos pacientes que nasceram no ano de 2000 ou no ano de 2002
	SELECT nome FROM paciente WHERE (data_nasc >='2000-01-01' AND data_nasc <='2000-12-31') or (data_nasc>='2002-01-01' AND data_nasc <='2002-12-31');
--2) O código e o nome dos pacientes de código 1 ou 4 ou 5 ou 8 ou 9 ou 88 ou 17 ou 22 ou 31 ou 33 ou 44.
	SELECT cod_pac, nome FROM paciente WHERE cod_pac in ( 1, 4, 5, 8, 9, 88, 17, 22, 31, 33, 44);
--IN possibilita o teste de multiplos valores que satisfaçam uma condição.

--3) O código dos médicos cuja terceira letra do nome é "A".
	SELECT cod_med FROM medico WHERE nome ILIKE ('__a%');
--LIKE substitui o = mas possibilita o retorno de mais de um resultado por query
--ILIKE faz com que a busca deixe de ser case sensitive
-- _ - representa 1 caractere
--% - representa uma sequência de caracteres indeterminadas

--4) O código dos médicos que possuem a letra "O" no nome.
	SELECT cod_med FROM medico WHERE nome ILIKE ('%o%');

--5) O nome dos pacientes que não possuem a letra "A" no nome.
	SELECT cod_med FROM medico WHERE nome not ILIKE ('%o%');
    
--Exemplo de uso do BETWEEN:
SELECT * FROM paciente WHERE cod_pac BETWEEN 1 and 3;
--seleciona os pacientes de código entre 1 e 3 incluindo o 1 e o 3