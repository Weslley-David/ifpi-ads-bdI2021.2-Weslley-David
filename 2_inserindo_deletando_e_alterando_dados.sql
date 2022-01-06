--1) Insira, pelo menos, 5 linhas em cada tabela do banco de dados da clínica médica.

INSERT into paciente VALUES (1, 'jonh', '2002-11-25');
INSERT into paciente VALUES (2, 'julian', '2003-01-23');
INSERT into paciente VALUES (3, 'jolivan', '2002-02-11');
INSERT into paciente VALUES (4, 'jurison', '1998-07-06');
--também é possível realizar a inserção de valores da seguinte maneira:
INSERT into paciente(NOME, COD_PAC, DATA_NASC) VALUES ('jeferson', 5, '2007-07-07');--Valores na ordem da especificação supracitada.

INSERT into especialidade VALUES (1, 'ontorrinolaringologista', 'cuida dos problemas de ouvido, nariz e garganta.', 450.0);
INSERT into especialidade VALUES (2, 'cardiologista', 'cuida do  coração', 400.0);
INSERT into especialidade VALUES (3, 'psicólogo', 'estudo e analise da mente', 500.0);
INSERT into especialidade VALUES (4, 'virologista', 'estudo sobre vírus', 300.50);
INSERT into especialidade VALUES (5, 'neurologista', 'cuida do cérebro', 750.0);

INSERT INTO medico VALUES(1, 'herberto', 3);
INSERT INTO medico VALUES(2, 'Alice', 5);
INSERT INTO medico VALUES(3, 'Roberta', 1);
INSERT INTO medico VALUES(4, 'Ian', 2);
INSERT INTO medico VALUES(5, 'Calino', 4);

INSERT INTO consulta VALUES(1, '2021-12-05', 1, 5);
INSERT INTO consulta VALUES(2, '2021-11-17', 2, 4);
INSERT INTO consulta VALUES(3, '2021-11-27', 3, 3);
INSERT INTO consulta VALUES(4, '2021-12-23', 4, 2);
INSERT INTO consulta VALUES(5, '2021-12-23', 5, 1);

--2) Altere para um valor de sua escolha a data de nascimento do paciente de código 1.

UPDATE paciente
SET data_nasc = '2002-07-07'
WHERE cod_pac = 1;

--3) Altere para um valor de sua escolha o nome dos pacientes que nasceram no mês de abril de 2000. Lembre-se de que a data de nascimento --de quem nasceu no mês de abril de 2000 está entre os dias 1º de abril de 2000 e 30 de abril de 2000 (insira no intervalo os dias 01 e 30 --de abril).

UPDATE paciente
SET nome = 'abril'
WHERE data_nasc >= '2002-04-01' AND data_nasc <= '2002-04-30';

--4) Delete a consulta de código 1.

DELETE FROM consulta WHERE cod_cons = 1;--sem especificar o valor, todos os valores de todas as consultas são apagadas.

--para deletar uma tabela use:
--DROP TABLE NOME_DA_TABELA