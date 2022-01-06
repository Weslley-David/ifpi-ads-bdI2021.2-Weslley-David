--Usa-se subquery para realizar pesquisas adentrando tabelas, isto é, a partir de uma subquery, é possível utilizar dados de uma outra tabela para que se pesquise em outras tabelas.
--1) Nome dos pacientes que foram consultados na data X (escolha uma data com dia, mês e ano)
	SELECT nome FROM paciente WHERE cod_pac in(
		SELECT cod_pac from consulta where data_cons = '2021-12-05'
	);

--2) O nome dos médicos que são da especialidade de código 1.
	SELECT nome FROM medico WHERE cod_esp = 1;

--3) O nome dos médicos que são da especialidade de nome Cardiologia.
	SELECT nome FROM medico WHERE cod_esp in(
		SELECT cod_esp FROM especialidade WHERE nome_esp = 'cardiologista'
	);

--4) O nome dos pacientes que foram consultados pelo médico de nome Arthur.
	SELECT nome FROM PACIENTE WHERE cod_pac IN (
		SELECT cod_pac FROM CONSULTA WHERE cod_med IN(
    			SELECT cod_med FROM MEDICO WHERE nome LIKE 'herberto'
    		)
	);

--5) O nome dos pacientes que foram consultados pelos médicos que são da especialidade de nome Oftalmologia.
	SELECT nome FROM PACIENTE WHERE cod_pac IN (
		SELECT cod_pac FROM CONSULTA WHERE cod_med IN(
    			SELECT cod_med FROM MEDICO WHERE cod_esp IN(
                		SELECT cod_esp FROM ESPECIALIDADE where nome_esp LIKE 'Oftalmologia'
                	)
    		)
	);