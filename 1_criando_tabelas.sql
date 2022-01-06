-- CRIANDO TABELAS
CREATE TABLE PACIENTE( --palavras chave para a criação de tabelas + nome da tabela
	COD_PAC INT NOT NULL PRIMARY KEY, -- atributos dentro de uma tabela
  	NOME VARCHAR(50) NOT NULL,-- atributos dentro de uma tabela
  	DATA_NASC DATE NOT NULL-- atributos dentro de uma tabela
);
--Definição de atributos: nome_do_atributo tipo ... [demais especificações]
--demais especificações podem ser a definição de um valor obrigatório ou a definição de um valor como uma chave por exemplo
--como em DATA_NASC DATE NOT NULL
--TIPOS DE DADOS: INT, VARCHAR, CHAR, DATE...
--Diferença entre char e varchar:
--char: aloca todos os caracterres especificados independente do tamanho do valor.
--varchar: aloca caracteres suficientes para armazenar o valor dentro do tamnaho especificado.

--Chaves primárias: São aquelas que identificam um conjunto de dados como único. (não devem se repetir).
CREATE TABLE ESPECIALIDADE(
	COD_ESP INT NOT NULL PRIMARY KEY, -- Exemplo de declaração de chave primária
	NOME_ESP VARCHAR(30) NOT NULL,
	DESCRICAO VARCHAR(100) NOT NULL,
	VALOR_CONSULTA FLOAT NOT NULL
);

--Chaves estrangeiras: São aquelas que fazem referência a chaves primárias de outras tabelas dentro de uma tabela.
CREATE TABLE MEDICO(
	COD_MED INT NOT NULL PRIMARY KEY,
	NOME VARCHAR(50) NOT NULL,
	COD_ESP INT NOT NULL REFERENCES ESPECIALIDADE(COD_ESP)--exemplo de criação de chave estrangeira.
	--também é possível usar:
  	--COD_ESP INT NOT NULL,
  	--CONSTRAINT ESP_MED FOREIGN KEY(COD_ESP) REFERENCES ESPECIALIDADE(COD_ESP)
);

CREATE TABLE CONSULTA(
	COD_CONS INT NOT NULL PRIMARY KEY,
  	DATA_CONS DATE NOT NULL,
  	cod_pac INT NOT NULL REFERENCES paciente(cod_pac),
  	cod_med INT NOT NULL REFERENCES medico(cod_med)
);