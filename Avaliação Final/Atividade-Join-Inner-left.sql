use regionalizacao;

-- 1.	Exibir todos os campos dos municípios cadastrados
select *from municipio;


-- 2.	Exibir os municípios que possuem em qualquer parte do nome bonita
select nomemunicipio from municipio where nomemunicipio like '%bonita%';


-- 3.	Exibir os estados da região com id 2
select *from  estado
where idregiao = 2;

-- 4.	Exibir as mesorregiões em ordem alfabética de nome
select  *from mesoregiao
order by nomemesoregiao;

-- 5.	Exibir os estados com id maior que 15
select *from estado
where idestado > 15;


-- 6.	Exibir os estados com id entre 20 e 30
select *from estado
where idestado between 20 and 30;


-- 7.	Exibir os estados com id 11, 12, 21, 31, 41, 42, 47
select *from estado
where idestado in(11,12,31,31,41,42,47);


-- 8.	Exibir a quantidade de estados cadastrados
select count(*) as 'Qtd estado cadastrados' from estado;


-- 9.	Exibir o maior valor do campo id da tabela de municípios
select max(idmunicipio) as 'Maior valor' from municipio;


-- 10.	Exibir o menor valor do campo id da tabela de municípios
select min(idmunicipio) as 'Menor valor' from municipio;


-- 11.	Exibir e calcular o somatório dos ids dos estados cadastrados
select sum(idestado) as Soma from estado;


-- 12.	Exibir e calcular a média dos ids dos estados cadastrados
select avg(idestado) as 'Media Município' from estado;


-- 13.	Exibir os estados da região norte
select estado.nomeestado, regiao.nomeregiao as 'Região Norte'from estado join regiao
on regiao.idregiao = estado.idregiao
where regiao.idregiao = 1;


-- 14.	Exibir os estados das regiões sul e sudeste
select estado.nomeestado as 'Nome Estado', regiao.nomeregiao as 'Nome Região' from estado join regiao
on regiao.idregiao = estado.idregiao
where regiao.idregiao in(3,4);




-- 15.	Exibir o nome da região e o nome de seus estados e siglas
select regiao.nomeregiao as 'Nome Região', estado.nomeestado as 'Nome Estado', estado.UF
 from regiao  join  estado
 on regiao.idregiao = estado.idregiao;



-- 16.	Exibir os municípios do estado de São Paulo
select mu.nomemunicipio from estado e join mesoregiao me on 
e.idestado = me.idestado join microregiao mi on me.idmesoregiao
= mi.idmesoregiao join municipio mu on mi.idmicroregiao = mu.idmicroregiao
where nomeestado = 'sao paulo';
