SELECT * FROM Atores
SELECT * FROM ElencoFilme
SELECT * FROM Filmes
SELECT * FROM FilmesGenero
SELECT * FROM Generos


--1º Query
SELECT Nome, Ano from Filmes


--2º Query
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano 

--3º Query
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro' OR Id = 28

--4º Query
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--5º Query
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

--6º Query
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

--7º Query
SELECT Ano,COUNT(Nome) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC 

--8º Query

SELECT * FROM Atores WHERE Genero = 'M'

--9º Query

SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome 

--10º Query

SELECT Filmes.Nome, Generos.Genero
FROM FilmesGenero 
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--11º Query

SELECT Filmes.Nome, Generos.Genero
FROM FilmesGenero 
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

--12º Query

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM ElencoFilme 
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id


SELECT * FROM Filmes
SELECT * FROM Generos
SELECT * FROM ElencoFilme
SELECT * FROM FilmesGenero
