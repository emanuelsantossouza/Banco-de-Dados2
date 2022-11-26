select
		country.code as 'CountryCode',
        country.Name as 'CountryName',
        count(city.id) as 'Cities'
  from country inner join city on country.code = city.countrycode
 group by country.code, country.name;
 
select
		country.code as 'CountryCode',
        country.Name as 'CountryName',
        Group_Concat(city.Name ) as 'Cities'
  from country inner join city on country.code = city.countrycode
 group by country.code, country.name;

select
		country.code as 'CountryCode',
        country.Name as 'CountryName',
        Group_Concat(countrylanguage.language ORDER BY countrylanguage.language  SEPARATOR', ') as 'Languages'
  from country inner join countrylanguage on country.code = countrylanguage.countrycode
 group by country.code, country.name;