--1
Select nome,ano from Filmes;
--2
Select nome,ano from Filmes order by ano asc;
--3
Select nome,ano,Duracao from Filmes where upper(nome) like UPPER('DE VOLTA PARA O FUTURO');
--4
Select nome,ano,Duracao from Filmes where ANO = 1997;
--5
Select nome,ano,Duracao from Filmes where ANO >2000;
--6
Select nome,ano,Duracao from Filmes where Duracao > 100 AND DURACAO < 150 ORDER BY duracao asc;
--7
Select ano,count(nome) as Quantidade from Filmes group by ano ORDER BY Quantidade desc;
--8
Select id,PrimeiroNome,UltimoNome,Genero from Atores where genero = 'M';
--9
Select id,PrimeiroNome,UltimoNome,Genero from Atores where genero = 'F' order by PrimeiroNome;
--10
Select f.Nome,g.Genero from Filmes f inner join FilmesGenero fg on f.id = fg.IdFilme
inner join Generos g on fg.IdGenero = g.Id;
--11
Select f.Nome,g.Genero from Filmes f inner join FilmesGenero fg on f.id = fg.IdFilme
inner join Generos g on fg.IdGenero = g.Id where upper(Genero) like UPPER('MISTÉRIO');
--12
Select f.Nome,a.PrimeiroNome,a.UltimoNome,ef.Papel from Filmes f inner join ElencoFilme ef on f.id = ef.IdFilme
inner join Atores a on ef.IdAtor = a.Id ;
