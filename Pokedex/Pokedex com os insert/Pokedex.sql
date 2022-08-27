-- DML LINGUAGEM DE MANIPULAÇÃO DE DADOS
-- INSERIR DADOS
INSERT INTO Types(Name) values ('Normal');
INSERT INTO Types(Name) values ('Planta');
INSERT INTO Types(Name) values 
('Fogo'), ('Água'), ('Veneno'), ('Voador');
INSERT INTO Types(Name) VALUE ('Eletrico');

INSERT INTO Gender(Name) VALUES
('Masculino'),
('Feminino'),
('Ambos'),
('Desconhecido');

INSERT INTO Generation(Name, Midia) VALUES
('Geração 1', 'D'), ('Geração','D');

INSERT INTO Pokemons(Number, GenerationId,
GenderId, Name, Height, weight) VALUES
(1,1, 3, 'Bulbasaur', 0.7, 6.9);

INSERT INTO PokemonTypes VALUES
(1,2), (1,5);

-- Num, Evol, Ger, Gen, Name, Des, Hei, Wei, Img
INSERT INTO Pokemons VALUE
(2, 1, 1, 3, 'Ivysaur', null, 1, 13, null),
(3,2, 1, 3, 'Venusar', null, 2 ,100, null),
(4, null, 1, 3, 'Charmander', null, 0.6, 8.5 ,null),
(5, 4, 1, 3, 'Charmeleon', null, 1.1, 19, null),
(6, 5, 1, 3, 'Charlizard', null, 1.7, 90.5, null);

INSERT INTO PokemonTypes VALUES
(2,2), (2, 5),
(3,2), (3, 5),
(4,3),
(5,3),
(6,3), (6,6);

-- ALTERAÇÃO DE DADOS
UPDATE Pokemons SET
	Description = 'oi buba' 
    Where Number = 1; -- Name = 'Bulbasaur'