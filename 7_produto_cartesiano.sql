--Produto cartesiano:
--Consiste em realizar o produto cartesiano entre linhas de uma entidade e a as linhas de demais entidades.
--Para gerar apenas o produto cartesiano de valores que se correspondem, basta igualar as chaves primárias com as chaves estrangeiras das tabelas.
--dessa forma, é possível fazer pesquisa por valores como se as tabelas fossem apenas uma.

--1) Nome dos pacientes que foram consultados na data X (escolha uma data com dia, mês e ano)
	SELECT nome from paciente, consulta WHERE paciente.cod_pac = consulta.cod_pac and data_cons = '2021-12-23';

--2) O nome dos médicos que são da especialidade de nome Cardiologia.
	SELECT nome from medico M, especialidade E WHERE M.cod_esp = E.cod_esp and nome_esp ILIKE 'cardiologista';

--3) O nome dos pacientes que foram consultados pelo médico de nome Arthur.
	SELECT P.nome from paciente as P, consulta as C, medico as M where P.cod_pac = C.cod_pac and C.cod_med = M.cod_med and M.nome ILIKE 'Arthur';

--4) O nome dos pacientes que foram consultados pelos médicos que são da especialidade de nome Oftalmologia.
	SELECT P.nome from paciente as P, consulta as C, medico as M, especialidade as E where P.cod_pac = C.cod_pac and C.cod_med = M.cod_med and M.cod_esp = E.cod_esp and E.nome_esp ILIKE 'psicólogo';
