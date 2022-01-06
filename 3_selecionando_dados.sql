--1) O nome dos pacientes que possuem código entre 2 e 5
SELECT nome FROM paciente WHERE cod_pac >= 2 AND cod_pac <= 5;

--2) O nome dos médicos que são da especialidade de código 2
SELECT nome FROM medico WHERE cod_esp = 2;

--3) O nome dos pacientes que nasceram no ano de 2000
SELECT nome FROM paciente WHERE data_nasc >='2000-01-01' AND data_nasc <='2000-12-31';

--4) O código dos pacientes que se consultaram no mês de agosto de 2021
SELECT cod_cons FROM consulta WHERE data_cons >='2021-08-01' AND data_cons <='2021-08-30';

--5) O nome dos médicos que não se chamam Maria
SELECT nome FROM medico WHERE nome != 'Maria';