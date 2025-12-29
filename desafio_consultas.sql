-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome,Ano,Duracao FROM Filmes ORDER BY Ano ASC

-- 3
SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome = 'De Volta Para o Futuro'

-- 4
SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano = 1997

-- 5
SELECT Nome,Ano,Duracao FROM Filmes WHERE Ano > 2000

-- 6
SELECT Nome,Ano,Duracao FROM Filmes WHERE Duracao > 100 and Duracao < 150 ORDER BY Duracao ASC

-- 7
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- 8
SELECT * FROM Atores WHERE Genero = 'M'

-- 9
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

-- 10
SELECT 
	F.Nome,
	G.Genero
FROM 
	Filmes AS F 
	INNER JOIN 
	Generos AS G 
	INNER JOIN 
	FilmesGenero AS FG
ON G.Id = FG.IdGenero 
ON FG.IdFilme = F.Id

-- 11
SELECT 
	F.Nome,
	G.Genero
FROM 
	Filmes AS F 
	INNER JOIN 
	Generos AS G 
	INNER JOIN 
	FilmesGenero AS FG
ON G.Id = FG.IdGenero 
ON FG.IdFilme = F.Id
WHERE G.Genero = 'Mistério'

-- 12
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	E.Papel
FROM
	Filmes AS F
	INNER JOIN
	ElencoFilme AS E
ON F.Id = E.IdFilme
	INNER JOIN
	Atores AS A
ON A.Id = E.IdAtor