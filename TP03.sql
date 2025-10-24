-- a. Listez toutes les données concernant les articles
-- b. Listez uniquement les références et désignations des articles de plus de 2 euros
-- c. En utilisant les opérateurs de comparaison, listez tous les articles dont le prix est compris entre 2 et 6.25 euros
-- d. En utilisant l'opérateur BETWEEN, listez tous les articles dont le prix est compris entre 2 et 6.25 euros
-- e. Listez tous les articles, dans l'ordre des prix descendants, et dont le prix n'est pas compris entre 2 et 6.25 euros et dont le fournisseur est Française d'Imports.
-- f. En utilisant un opérateur logique, listez tous les articles dont les fournisseurs sont la Française d'imports ou Dubois et Fils
-- g. En utilisant l'opérateur IN, réalisez la même requête que précédemment
-- h. En utilisant les opérateurs NOT et IN, listez tous les articles dont les fournisseurs ne sont ni Française d'Imports, ni Dubois et Fils.
-- i. Listez tous les bons de commande dont la date de commande est entre le 01/02/2019 et le 30/04/2019.

a.
SELECT * 
FROM ARTICLE;

b.
SELECT REF, designation 
FROM article 
WHERE prix > 2;

c.
SELECT * 
FROM article 
WHERE prix >= 2 && prix <= 6.25;

d.
SELECT * 
FROM article 
WHERE prix BETWEEN 2 AND 6.25;

e.
SELECT * 
FROM article 
WHERE prix NOT BETWEEN 2 AND 6.25;
ORDER BY prix DESC 

-- Version Valentin
SELECT * 
FROM article 
where (article.prix < 2 || article.prix > 6.25) and article.ID_FOU = 1 
ORDER BY prix DESC 

f.
SELECT * 
FROM article 
where id_fou = 1 || id_fou = 3;

g.
SELECT * 
FROM article 
where id_fou = 1 IN (1,3);

h.
SELECT * 
FROM article 
where id_fou = 1 NOT IN (1,3);

i.
SELECT * 
FROM bon 
where DATE_CMDE BETWEEN '2019/02/01' and  '2019/04/30'; 