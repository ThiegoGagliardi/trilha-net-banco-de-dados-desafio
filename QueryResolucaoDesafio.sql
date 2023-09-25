-- 1 - Buscar o nome e ano dos filmes
SELECT F.Nome, F.Ano 
FROM Filmes F;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT F.Nome, F.Ano 
FROM Filmes F 
ORDER BY F.Ano;

-- 2 - Buscar o filmes ordenados por ordem crescente pelo ano (Seguindo o Print)
SELECT F.* FROM Filmes F  ORDER BY F.Ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT F.Nome, F.Ano, F.Duracao 
FROM Filmes F 
WHERE F.Nome = 'de volta para o futuro';

--  4 - Buscar os filmes lançados em 1997
SELECT F.Nome 
, F.Ano
, F.Duracao 
FROM Filmes F
WHERE F.Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT F.Nome 
, F.Ano
, F.Duracao
FROM Filmes F 
WHERE F.Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT F.Nome 
, F.Ano
, F.Duracao
FROM Filmes F
WHERE F.Duracao > 100 and 
      F.Duracao < 150 
ORDER BY F.Duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT F.Ano, COUNT(F.Id) As 'QUANTIDADE' 
FROM Filmes F 
GROUP BY F.Ano 
ORDER BY QUANTIDADE DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT A.PrimeiroNome, A.UltimoNome 
FROM Atores A 
WHERE Genero = 'M';

-- 8 - Buscar os Atores do gênero masculino (seguindo o print)
SELECT A.* 
FROM Atores A 
WHERE Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT A.PrimeiroNome, A.UltimoNome 
FROM Atores A 
WHERE Genero = 'F';

-- 9 - Buscar os Atores do gênero feminino (seguindo o print)
SELECT A.* 
FROM Atores A _
WHERE Genero = 'F';

-- 10 - Buscar o nome do filme e o gênero
SELECT F.Nome
, G.Genero 
FROM Filmes F 
INNER JOIN FilmesGenero FG ON (F.Id = FG.IdFilme)  
INNER JOIN Generos       G ON (FG.IdGenero = G.Id);

--  11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome
, G.Genero 
FROM Filmes F 
INNER JOIN FilmesGenero FG ON (F.Id = FG.IdFilme)  
INNER JOIN Generos G ON (FG.IdGenero = G.Id)
WHERE G.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
  F.Nome
, A.PrimeiroNome
, A.UltimoNome
, EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON (F.Id = EF.IdFilme)
INNER JOIN Atores A on (EF.IdAtor = A.Id);