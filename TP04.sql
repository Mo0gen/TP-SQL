-- a. Listez les articles dans l'ordre alphabétique des désignations
-- b. Listez les articles dans l'ordre des prix du plus élevé au moins élevé
-- c. Listez tous les articles qui sont des « boulons » et triez les résultats par ordre de prix ascendant
-- d. Listez tous les articles dont la désignation contient le mot « sachet ».
-- e. Listez tous les articles dont la désignation contient le mot « sachet » indépendamment de la casse !
-- f. Listez les articles avec les informations fournisseur correspondantes. Les résultats doivent être triées dans l'ordre alphabétique des fournisseurs et par article du prix le plus élevé au moins élevé.
-- g. Listez les articles de la société « Dubois & Fils »
-- h. Calculez la moyenne des prix des articles de la société « Dubois & Fils »
-- i. Calculez la moyenne des prix des articles de chaque fournisseur
-- j. Sélectionnez tous les bons de commandes émis entre le 01/03/2019 et le 05/04/2019 à 12h00.
-- k. Sélectionnez les divers bons de commande qui contiennent des boulons
-- l. Sélectionnez les divers bons de commande qui contiennent des boulons avec le nom du fournisseur associé.
-- m. Calculez le prix total de chaque bon de commande
-- n. Comptez le nombre d'articles de chaque bon de commande
-- o. Affichez les numéros de bons de commande qui contiennent plus de 25 articles et affichez le nombre d'articles de chacun de ces bons de commande
-- p. Calculez le coût total des commandes effectuées sur le mois d'avril

a.
SELECT *
FROM article
ORDER BY designation ASC;

b.
SELECT *
FROM article
ORDER BY prix DESC;

c.
SELECT designation 
FROM article 
where designation like '%boulon%';


d.
SELECT designation 
FROM article 
where designation like '%sachet%';

e.
SELECT designation 
FROM article 
where UPPER(designation) like '%sachet%';

f.
SELECT *
FROM article
JOIN fournisseur on fournisseur.id = article.id_fou
ORDER BY nom ASC, prix DESC;

g.
SELECT *
FROM article
JOIN fournisseur on fournisseur.id = article.id_fou
where nom = 'Dubois & Fils';

h.
SELECT AVG (prix)
FROM article
JOIN fournisseur on fournisseur.id = article.id_fou
where nom = 'Dubois & Fils';

i.
SELECT fournisseur.nom AVG (prix) as prix_moyen
FROM fournisseur.nom
JOIN fournisseur on fournisseur.id = article.id_fou;
GROUP BY fournisseur.nom

j.
SELECT * 
FROM bon 
where DATE_CMDE BETWEEN '2019/03/01' and  '2019/04/05 12:00:00'; 

k.
SELECT *
FROM bon
JOIN compo  on bon.id = compo.ID_BON
JOIN article on  article.id = compo.id_art 
WHERE designation LIKE '%boulon%';

l.
SELECT *
FROM bon
JOIN compo  on bon.id = compo.ID_BON
JOIN article on  article.id = compo.id_art
JOIN FOURNISSEUR on fournisseur.id =
WHERE designation LIKE '%boulon%'

m.
SELECT bon.id SUM (article.prix * compo.qte)
FROM bon
JOIN compo  on bon.id = compo.ID_BON
JOIN article on  article.id = compo.id_art
GROUP BY bon.id 

n. -- n. Comptez le nombre d'articles de chaque bon de commande
SELECT bon.id SUM (compo.id)
FROM bon
JOIN compo  on bon.id = compo.ID_BON
GROUP BY bon.id;

o. 
SELECT bon.id SUM (compo.id)
FROM bon
JOIN compo  on bon.id = compo.ID_BON
GROUP BY bon.id 
HAVING SUM (compo.qte)>25; 
