--2) O nome do hóspede mais velho.
SELECT nome from hospede where data_nasc = (SELECT MIN(data_nasc) from hospede);

--3) Usando produto cartesiano, o nome dos hóspedes que se hospedaram nos apartamentos da categoria de nome "luxo".
SELECT hospede.nome from hospede, hospedagem, apartamento, categoria WHERE
hospede.cod_hosp = hospedagem.cod_hosp and hospedagem.num = apartamento.num
and apartamento.cod_cat = categoria.cod_cat and categoria.nome = 'luxo';

--4) O nome e a data de nascimento dos hóspedes que nasceram no ano de 2000.
SELECT nome, data_nasc from hospede where data_nasc > '2000-01-01' and data_nasc <
'2000-12-31';

--5) O nome das categorias dos apartamentos que foram ocupados pelo hóspede mais jovem ou pelo hóspede mais velho.
SELECT categoria.nome from hospede, hospedagem, apartamento, categoria
where (categoria.cod_cat = apartamento.cod_cat And apartamento.num =
hospedagem.num and hospedagem.cod_hosp = hospede.cod_hosp and
hospede.data_nasc = (SELECT max(hospede.data_nasc) from hospede)) or
(categoria.cod_cat = apartamento.cod_cat And apartamento.num = hospedagem.num and
hospedagem.cod_hosp = hospede.cod_hosp and hospede.data_nasc = (SELECT
min(hospede.data_nasc) from hospede));