-- Une base de donnée (Database) est utile dans le cadred d'un projet informatique pour concerver des informations en mémoire.
-- A l'interieur de la base de donnée, les infromations sont classés, structurée et regroupée généralement par sujet.
-- Dans la grande majorité des cas une BDD est générée par un logiciel moteur qui le manipule : un SGBD

-- MCD => Modèle conceptuel de données.
-- Le modèle coneptuel de données => donne un plan de la Datasse avant de la créer

-- SGBD => Système de gestion de vos bases de données. // Database management système
-- Les SGBD permet d'acceuillir, d'exploiter et de fonctionner les bases de données (moteur).

-- Nous utiliserons MySQLdautre SGBD existent comme Oracle, Sql server, PostgreSQL, ect...


-- BDD => Base de données
-- la base de données représente l'emplcement des données sauvegardées.

-- SQL => Structureb Query Language
-- le langage de requête SQL nous permet d'échanger des infromations avec la base de données.

-- Une fois les informations enregistrées, il est important de pouvoir les gérer (ajout, suppression, consulation).

-- /!\ Toutes ces actions de gestions et manipulation passeront par une requête à SQL.

-- Modèle MCD:
-- Avant de créer une BDD, il est essentiel de se poser et réflechir sur la modelisation.
-- En effet, une base de données va servir de support à une application informatique.
-- Comment modéliser une base de données ?
-- Nous pouvons modéliser sur papier si celle-ci n'est pas complexe mais dans la plupart des cas nous auront besoin d'un logiciel pour nous accompagner et avoir une vue d'ensemble.

-- Un logiciel connu permet de modeliser une BDD: MySQL Workbench

-- la mobilisation se compose de différente tables (table = sujet)
-- Exemple, si nous vendons des produits sur notre site, nous aurons 1 table produit et 1 table commande.

-- L E S   T A B L E S   :
-- 1 sujet représente 1 table dans une BDD, 1 table est un emplacement de sauvegarde.
-- Il faut réfléchir au sujet et à ses emplacment, si nous vendons des produits nous aurons certainement besoin d'une table membre.

-- Les types des colonnes / champs :
-- Type: varchar => String chaine de caractére, mexlenght 256.
-- Sert à enregistrer un pseudo, email, titre de produit, ou titre d'article.

-- Type int => Number
-- Sert à enregistrer les numéros d'un champ servant d'ID, de prix, code postal, quantité en stock...

-- Type date => date
-- Sert à enregistrer la date d'une requête.

-- LES IDENTIFIANTS (clé Primaire - PK Primary Key):
-- Les identifiants sont des champs systématiquement présents dans chaque tables, et ce en premiére postition => Clé Primaire (PK).
-- Pour viter de choisir le numéro et faire des erreurs nous demanderosn à ce qu'il soit généré automatiquement en i++.

-- AUTO INCREMENTATION :
-- Option permettant de générer un numéro unique dans la colonne (champs) de type PK (ID).
-- Attention le 1er champ de chaque table sera systématiquement un ID qui sera PK et AI (i++).

-- NULL / NOT NULL
-- Dans chaques champs nous pourrons indiquer si nous acceptons les valeurs NULL ou non NULL.
-- NULL => type qui permet de laisser le champ vide (mot required).

-- Les relations : 
-- Exemple: 1 métre commande 1 produit (ou l'inverse... non pas le produit qui commande le client... quoi qui...)
-- Nous devons enregistrer l'info dans 1 table commande, pour cela il faut voir les cordinalité

-- CORDINALITES :
-- Elles permettes de connaître le chiffre nmini et amxi d'enregistrement pour une relation.

-- TABLES DE JOINTURE
-- Elle permet de faire le lien entre deux tables.
-- Exemple: sct taxi qui possederait des conducteurs (table1) et des taxis (table2), 1er conducteur peut conduire peut conduire relation (0.1) mini  et max 1 voiture conduite à a fois.
-- le taxi relation: (0.n) mini 0 conducteur maxi un nombre undifined de conducteurs.
-- table taxi table conducteurs table relation: idTaxi, idConducteur, idConducteur-vehicule.

-- LES REQUETES
-- Comment ? Formulation => execution => resultat.
-- 4 types de requêtes:
-- SELECTION (question/reponse)
-- INSERTION (action/impact)
-- MODIFICATION (action/impact)
-- SUPRESSION (action/impact)
-- Finir les requêtes par un point-virgule; 

-- APPLICATION:

select sum(salaire*12) from employes where service = 'commercial'
    -> ;
+-----------------+
| sum(salaire*12) |
+-----------------+
|          144000 |
+-----------------+

-- Afficher le salaire moyen par service
select service, round(avg(salaire)) from employes group by service;
+--------------+---------------------+
| service      | round(avg(salaire)) |
+--------------+---------------------+
| Commercial   |                3000 |
| Direction    |                3000 |
| Informatique |                3000 |
| Production   |                3000 |
| Secretariat  |                3000 |
+--------------+---------------------+

-- Linker shell à phpadmin: # mysql -u roor -p
-- Maria08 [(none)] CREATE DATABASE entreprise;
-- Maria08 [(none)] USE entreprise;
-- Lister la base de données: SHOW TABLES;
-- supprimer une BDD: DROP entreprise;
-- supprimer une table: DROP employés;
-- vide le contenu d'une table : TRUNCATE employés;
-- Observer la structure d'une table: desc emplyes;
-- Afficher une colonne: SELECT service FROM employes;
-- Maria08 [(entreprise)] SELECT DISTINCT (service) FROM emplyes;
-- SELECTnom, prenom, data_embauche FROM employes WHERE data_embauche BETWEEN. '2006-01-01' AND '2006-01-01';
-- SELECT prenom FROM employes WHERE prenom LIKE 'y%' le % peut être placé avant pour selectionner par la derniere lettre.

-- OPERATEUR DE COMMANDE
-- = est égale
-- > strictement superieur
-- < strictement inferieur
-- >= superieur ou égal
-- <= inferieur ou égal
-- <> != different de;

-- Séléctionner les données entre (BETWEEN) un intervalle (fonctionne dans une requête utilisant WHERE)
-- SELECT * FROM

-- Pour eviter des redondances dans les résultats
-- SELECT DISTINC nom_colonne FROM nom_de_la_table;

-- Pour gagner plusieurs résultats [la fonction SUM()] permet d'addicitionner la valeur de chauque salaire pour un même service

-- Tirer les lignes dans un résultat d'une requête SQL
-- SELECT prenom, nom, date_embauche FROM employes ORDER BY date_embauche DESC; DESC => Decroissant. ASC => Croissant

-- Vérifier si un colonne est égale à une valeurs compris dans le set de valeurs déterminés.

-- SELECT * FROM employes WHERE prenom IN ('c');

-- SELECT * FROM employes WHERE service = 'Commercial' AND salaire = 2300 OR salaire = 3300;
-- SELECT service, COUNT(*) AS nombre FROM employes GROUP BY service;

-- SELECT service, COUNT(*) AS nombre FROM employes GROUP BY service HAVING COUNT(*) > 1;

-- LA FONCTION INSERT
-- UPDATE employes SET salaire = 3000;
-- Met tous les salaires à 3000;

-- DELETE FROM employes WHERE service = 'production';
-- supprime les gens du service prod;

-- MEND SUR LES REQUETES DE SELECTION SELECT
-- SELECT/ FROM/ DISTINCT/ WHERE/ BETWEEN/ CURDATE / LIKE / %
-- OPERATEUR DE COMPARAISON / ORDER BY / ASC / DESC / LIMIT / AS pour... / SUM / AVG / COUNT / MIN / MAX / IN / NOT IN / CONDITION MULTIPLE / HAVING

-- MEND SUR LES REQUETE DE SELECTION INSERT
-- INSERT INTO... VALUE

-- MEND SUR LES REQUETES DE SELECTION UPDATE
-- UPDATE... SET... WHERE

-- MEMO SUR LES REQUETES DE SELECTION DELETE,
-- DELETE FROM... WHERE...

-- E X E R C I C E :
-- Afficher la profession de l'id 739
-- Afficher la date_embauche de Nouha
-- Afficher le nombre de commercant

 Select prenom, service FROM employes WHERE id_employes=739;
+--------+--------------+
| prenom | service      |
+--------+--------------+
| Tom    | Informatique |
+--------+--------------+

Select prenom, date_embauche FROM employes WHERE prenom='Nouha';
+--------+---------------+
| prenom | date_embauche |
+--------+---------------+
| Nouha  | 2023-08-22    |
+--------+---------------+

select service, COUNT(*) AS nombre FROM employes WHERE service = 'commercial';
+------------+--------+
| service    | nombre |
+------------+--------+
| Commercial |      4 |
+------------+--------+

-- Afficher le nombre de commerciaux à l'année.

select sum(salaire*12) from employes where service = 'commercial'
    -> ;
+-----------------+
| sum(salaire*12) |
+-----------------+
|          144000 |
+-----------------+

-- Afficher le salaire moyen par service
select service, round(avg(salaire)) from employes group by service;
+--------------+---------------------+
| service      | round(avg(salaire)) |
+--------------+---------------------+
| Commercial   |                3000 |
| Direction    |                3000 |
| Informatique |                3000 |
| Production   |                3000 |
| Secretariat  |                3000 |
+--------------+---------------------+

-- Afficher le nombre de rectrutement pour l'année 2001
SELECT COUNT(*) as 'nb de recrutement' FROM employes WHERE date_embauche BETWEEN '2001-01-01' AND '2001-12-31';
+-------------------+
| nb de recrutement |
+-------------------+
|                 2 |
+-------------------+

-- Afficher le nombre de service différents
SELECT COUNT(DISTINCT service) FROM employes;
+-------------------------+
| COUNT(DISTINCT service) |
+-------------------------+
|                       5 |
+-------------------------+

-- Afficher les informations de l'employé du service gagnant le +

-- Afficher l'employé ayant été embauché en dernier.
select * from employes where date_embauche = (select MAX(date_embauche)from employes);
+-------------+--------+------+-----+--------------+---------------+---------+
| id_employes | prenom | nom  | sex | service      | date_embauche | salaire |
+-------------+--------+------+-----+--------------+---------------+---------+
|         990 | Nouha  | Kone | M   | Informatique | 2023-08-22    |    3100 |
+-------------+--------+------+-----+--------------+---------------+---------+

--Récuperer les couleurs 'yeux des stagiaires (Séléctionner plusieurs champs dans une table)
 select prenom, yeux from stagiaires;
+------------+--------+
| prenom     | yeux   |
+------------+--------+
| Yacine     | marron |
| Hafsa      | marron |
| Henri      | Henri  |
|  Tom       | vert   |
|  Nouha     | vert   |
|  Nassim    | marron |
|  Kevin     | noir   |
|  Shaymae   | noir   |
|  Delia     | marron |
| Dominique  | vert   |
| Yadaf      | marron |
| NiamtuLlah | marron |
| Theo       | Bleu   |
+------------+--------+

-- Dédoublonner (yeux)un résultat sur plusieurs champs (stagiaires)

