/*ATIVIDADE DE BANCO DE DADOS COM SELECT*/
/*CASO QUEIRA COPIAR TUDO BEM. MAS DA UMA ESTRELA NO REPOSITORIO PELO MENOS... AGRADEÇO*/

use world;

/*	Exibir os países com expectativa de vida (LifeExpectancy) maior que 75 anos.*/
select * from country where LifeExpectancy > 75; 



/* 	Exibir os países que NÃO são independentes (IndepYear contém o ano de independência de cada país).*/
select * from country where indepYear is null;



/*	Exibir apenas as línguas oficiais (IsOfficial) dos países.*/
select *from countryLanguage where IsOfficial like "T";



/*	Exibir quantos países (country) existem cadastrados.*/
select count(*) country from country;



/*	Exibir quantas cidades (city) existem cadastradas.*/
select count(*) city from city;



/*	Exibir quantas línguas (language) são faladas no mundo (countrylanguage), ignorando as repetidas.*/
select distinct(language)   from Countrylanguage;



/*	Exibir todos os campos das cidades (city) brasileiras.*/
select *from city where Countrycode like"BRA";



/*	Exibir a quantidade de pessoas da cidade mais populosa do Mundo.*/
select Max(population) from city;



/*	Exibir a quantidade de pessoas da cidade menos populosa do Mundo.*/
select *from city where population =(
select Min(population) from city );



/*	Exibir a cidade mais populosa (population) do Mundo.*/
Select name, Population from city where population =(
select max(population) from city);



/*	Exibir a cidade menos populosa (population) do Brasil. */
Select name, Population from city where population =(
select min(population) from city);



/*	Exibir as línguas faladas na Alemanha (Germany).*/
select language  from CountryLanguage where countryCode = 'DEU';



/*	Exibir o total da população das cidades Brasileiras cadastradas*/
select sum(population)  from city where countrycode = 'BRA';



/*	Exibir a média de população das cidades da Índia.*/
select avg(population) as 'Media da População' from city where Countrycode = 'IND';
select  *from country where name like 'india';



/*	Exibir a média de expectativa de vida do Mundo.*/
select avg(LifeExpectancy) as 'Expectativa de vida'from country;
