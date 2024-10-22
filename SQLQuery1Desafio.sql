--1
SELECT Nome, Ano
FROM Filmes
--2
SELECT Nome, Ano, Duracao
FROM Filmes     
ORDER BY  Ano  ASC
--3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'
--4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997
--5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000
--6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC
--7
SELECT Ano, COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC
--8
SELECT *
FROM Atores
WHERE Genero = 'M'
--9
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC
--10
SELECT f.Nome AS Nome, g.Genero AS Genero
FROM Filmes AS f
INNER JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme                  
INNER JOIN Generos AS g ON fg.IdGenero = g.id;
--11
SELECT f.Nome AS Nome, g.Genero AS Genero
FROM Filmes AS f
INNER JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme                  
INNER JOIN Generos AS g ON fg.IdGenero = g.id
WHERE Genero = 'Mist�rio'
--12
 
SELECT f.Nome,a.PrimeiroNome, a.UltimoNome, ef.Papel 
From Filmes AS f 
INNER JOIN ElencoFilme AS ef ON f.Id = ef.IdFilme
INNER JOIN Atores AS a ON ef.Id = a.Id
----------------------------------
