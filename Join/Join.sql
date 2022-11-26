-- Pesquisas com Relacionamento entre Tabelas
select
	   city.*,
       country.name as 'Country Name'
  from city, country
 where city.countrycode = country.code;
  
-- JOIN Une as duas tabelas: INNER = chave estrangeira obrigatoria, LEFT, RIGHT
select
	   c.*,
       p.name as 'Country Name'
  from city c inner join country p
    on c.countrycode = p.code
 order by p.name, c.name;


-- Left a direita| ou Right a esquerda | quando a chave estrangueira não é obrigatoria
select
	   c.*,
       p.name as 'Country Name'
  from city c left join country p
    on c.countrycode = p.code
 order by p.name, c.name;


-- Produtos e categorias
select p.*,
       c.nome as 'Categoria'
  from produto p inner join categoria c 
    on p.categoriaId = c.Id;

-- ItemVenda, Produtos e Categorias
select i.*,
       p.nome as 'Produto',
       c.nome as 'Categoria'
  from itemvenda i inner join produto p on i.produtoId = p.Id
              inner join Categoria c on p.categoriaId = c.Id;

select i.*,
       p.nome as 'Produto',
       c.nome as 'Categoria',
       m.nome as 'Marca'
  from itemvenda i inner join produto p on i.produtoId = p.Id
              inner join Categoria c on p.categoriaId = c.Id
			  inner join Marca m on p.MarcaId = m.Id
 where i.vendaId = 55;