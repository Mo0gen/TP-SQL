-- CREATION DES TABLES

-- INSERTION FOURNISSEUR
-- 1,'Française d'imports'
-- 2,'FDM SA'
-- 3,'Dubois & Fils'

-- INSERTION ARTICLE
-- 1, 'A01', 'Perceuse P1', 74.99, 1
-- 2, 'F01', 'Boulon laiton 4 x 40 mm (sachet de 10)', 2.25, 2
-- 3, 'F02', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.45, 2
-- 4, 'D01', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.40, 3
-- 5, 'A02', 'Meuleuse 125mm', 37.85, 1
-- 6, 'D03', 'Boulon acier zingué 4 x 40mm (sachet de 10)', 1.80, 3
-- 7, 'A03', 'Perceuse à colonne', 185.25, 1
-- 8, 'D04', 'Coffret mêches à bois', 12.25, 3
-- 9, 'F03', 'Coffret mêches plates', 6.25, 2
-- 10, 'F04', 'Fraises d''encastrement', 8.14, 2

-- INSERTION BON
-- Insertion du bon de commande auprès du fournisseur "Française d'Imports"

-- INSERTION COMPO
-- Insertion de la composition du bon de commande n°001
-- 3 Perceuses P1
-- 4 Meuleuses 125mm
-- 1 Perceuse à colonne

INSERT INTO fournisseur (id,nom) VALUES (1,"Française d'imports");
INSERT INTO fournisseur (id,nom) VALUES (2,"FDM SA");
INSERT INTO fournisseur (id,nom) VALUES (3,"Dubois & Fils");

INSERT INTO article (id, REF, designation, prix, ID_FOU) VALUES (1, 'A01', 'Perceuse P1', 74.99, 1);
INSERT INTO article (id, REF, designation, prix, ID_FOU) VALUES (2, 'F01', 'Boulon laiton 4 x 40 mm (sachet de 10)', 2.25, 2);
INSERT INTO article (id, REF, designation, prix, ID_FOU) VALUES (3, 'F02', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.45, 2);
INSERT INTO article (id, REF, designation, prix, ID_FOU) VALUES (4, 'D01', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.40, 3);
INSERT INTO article (id, REF, designation, prix, ID_FOU) VALUES (5, 'A02', 'Meuleuse 125mm', 37.85, 1);
INSERT INTO article (id, REF, designation, prix, ID_FOU) VALUES (6, 'D03', 'Boulon acier zingué 4 x 40mm (sachet de 10)', 1.80, 3);
INSERT INTO article (id, REF, designation, prix, ID_FOU) VALUES (7, 'A03', 'Perceuse à colonne', 185.25, 1);
INSERT INTO article (id, REF, designation, prix, ID_FOU) VALUES (8, 'D04', 'Coffret mêches à bois', 12.25, 3);
INSERT INTO article (id, REF, designation, prix, ID_FOU) VALUES (9, 'F03', 'Coffret mêches plates', 6.25, 2);
INSERT INTO article (id, REF, designation, prix, ID_FOU) VALUES (10, 'F04', 'Fraises d''encastrement', 8.14, 2);

INSERT INTO BON (id,Numero, Date_CMDE, Delai, ID_FOU) VALUES (1, 1, '2025/10/23',3, 1);

INSERT INTO COMPO (id_ART, QTE) VALUES (1,3);
INSERT INTO COMPO (id_ART, QTE) VALUES (5,4);
INSERT INTO COMPO (id_ART, QTE) VALUES (7,1);







