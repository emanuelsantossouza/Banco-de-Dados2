-- Comandos DQL - Data Query Language
-- SELECT
-- SINTAXE:
--   SELECT <COLUNAS QUE VOCÊ QUER EXIBIR AO USUÁRIO> FROM <NOME TABELA>
-- Exibir todos os Tipos de pokemons existentes
Select id, Name Color From Types; -- sem a * vc busca digitando os name dos campos
Select * From Types; -- A * Mostra tudo
select Number, Name from Pokemons;


-- Exibir todos os campos dos pokemons ordenados por Número
-- ORDER BY Campo <ASC, DESC>, ordem crescente é o padrão
select Number, name from pokemons
order by number; -- Ordena a tabela de acordor como dado pedido;




-- Exibir todos os campos dos pokemos ordenador por peso, do mais pesado para o leve
select Number, name from pokemons
order by weight;

-- Filtrar os dados - WHERE campo numérico
select * from Types Where id = 14;
select * from Types Where id > 14;
select * from Types Where id < 14;
select * from Types Where id <> 14;
select * from Types Where id >= 14;
select * from Types Where id <= 14;



/* Exibir os Pokemons com Altura igual ou maior a 1.5 */
select * from Types Where height >= 1.5
Order by height;


/* Exibir os Pokemons com Peso menor que 10 */
select * from Pokemons where height < 10 order by weight;


/* Exibir os Pokemons com Altura igual ou maior a 1.5 e Peso menor que 10 */
select * from Pokemons where height >= 1.5 And Weight < 10;

/* Exibir os Tipos com Id = 10 e 17 */
select * from Types where Id= 10 or id = 10;

/* Exibir os Tipos onde o Id não for 7 */
select * from Types where Not Id= 7;


-- Filtrar os dados - WHERE campo texto -> USAR O LIKE
/* Nome = Elétrico */
select * from Types Where Name = 'Eletrico';
select * from Types Where Name Like 'Eletrico';

/* % ao Final de um texto, pesquisar todos os valores daquele campo que comecem o texto informado */
select * from Types Where Name Like 'F%'; -- % Corriga

-- % no ínicio de um texto
select * from Pokemons Where Name Like '%P';

-- % no meio de um texto
select * from Pokemons Where Name Like '%P%';

-- Filtrando por Gênero
-- Exibir pokemons que podem ser encontrados em ambos os gêneros
-- GenderId 3 -> Masculino e Feminino
-- Select p.* From Pokemons p
select p.Number As 'Nº', p.Name as 'nome', p.Weight as 'Peso' From Pokemons p
 Where GenderId = 3;

-- GenderId 1 -> Masculino
select p.Number As 'Nº', p.Name as 'nome', p.Weight as 'Peso' From Pokemons p
 Where GenderId = 1;

-- GenderId 2 -> Feminino
select p.Number As 'Nº', p.Name as 'nome', p.Weight as 'Peso' From Pokemons p
 Where GenderId = 2;

-- GenderId 4 -> Desconhecido
select p.Number As 'Nº', p.Name as 'nome', p.Weight as 'Peso' From Pokemons p
 Where GenderId = 4;