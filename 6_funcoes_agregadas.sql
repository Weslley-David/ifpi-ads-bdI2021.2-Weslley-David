--funções agregadas devem sempre estar acompanhadas de um select
--MIN() retorna o valor mínimo
	--retorna valores em ordem alfabética quando aplicável em strings
    --também funciona para datas
--MAX() retorna o valor máximo
--AVG() retorna a média dos valores
--SUM() retorna a soma dos valores 
--COUNT() retorna a quantidade de valores
	--não considera espaços nulos

--1) Obtenha o maior código de especialidade.
	SELECT max(cod_esp) from ESPECIALIDADE;
--2) Obtenha o nome da especialidade de maior código.
	SELECT nome_esp from ESPECIALIDADE WHERE cod_esp = (SELECT max(cod_esp) from ESPECIALIDADE);
--3) Obtenha o nome dos médicos que são da especialidade que possui o maior valor de consulta.
	SELECT nome from MEDICO where cod_esp in (SELECT cod_esp FROM ESPECIALIDADE where valor_consulta in (SELECT max(valor_consulta) from ESPECIALIDADE));
--4) Obtenha o nome dos pacientes que se consultaram com os médicos que são da especialidade que possui o menor valor de consulta.
	SELECT nome from paciente WHERE cod_pac in (SELECT cod_pac from consulta where cod_med in ( SELECT cod_med from MEDICO where cod_esp in (SELECT cod_esp FROM ESPECIALIDADE where valor_consulta in (SELECT MIN(valor_consulta) from ESPECIALIDADE))));