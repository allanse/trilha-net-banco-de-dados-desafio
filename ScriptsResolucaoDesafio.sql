--1 - Buscar o nome e ano dos filmes
--select nome, ano from Filmes;

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select nome, ano from Filmes order by Ano;

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select nome, ano, duracao from Filmes where upper(nome) = 'DE VOLTA PARA O FUTURO';

--4 - Buscar os filmes lançados em 1997
select * from Filmes where ano = 1997;

--5 - Buscar os filmes lançados APÓS o ano 2000
select * from Filmes where ano > 2000;

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from Filmes where Duracao > 100 and Duracao < 150 order by Duracao;

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select ano, count(ano) qtde from Filmes group by ano order by ano desc

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome from Atores where Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome

--10 - Buscar o nome do filme e o gênero
select f.nome, g.Genero from Filmes as f inner join FilmesGenero as fg on f.Id = fg.IdFilme inner join Generos as g on g.Id = fg.IdGenero

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select f.nome, g.Genero from Filmes as f inner join FilmesGenero as fg on f.Id = fg.IdFilme inner join Generos as g on g.Id = fg.IdGenero where g.Genero = 'Mistério';

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select f.nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes as f inner join ElencoFilme as ef on f.Id = ef.IdFilme inner join Atores as a on a.Id = ef.IdAtor