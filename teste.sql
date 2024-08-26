Buscar o nome e ano dos filmes:

SELECT Nome, Ano
FROM Filmes;

Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano:

SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

Buscar pelo filme "De Volta para o Futuro", trazendo o nome, ano e a duração:

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

Buscar os filmes lançados em 1997:

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

Buscar os filmes lançados APÓS o ano 2000:

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente:

SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

Buscar a quantidade de filmes lançados por ano, agrupando por ano, ordenando pela quantidade em ordem decrescente:

SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome:

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome:

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

Buscar o nome do filme e o gênero:

SELECT f.Nome AS NomeFilme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

Buscar o nome do filme e o gênero do tipo "Mistério":

SELECT f.Nome AS NomeFilme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel:

SELECT f.Nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;