-- Pour ce connecté
mysql -u root --

--Afficher les bases de données
 show databases;
+--------------------+
| Database           |
+--------------------+
| entreprise         |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| poles              |
| portfolio          |
| shaymae            |
| shaymaee           |
| site wordpress     |
| test               |
| teste              |
+--------------------+

--Crée une bases de données
create database haribo;

--Afficher toutes les bases de données
 show databases;
+--------------------+
| Database           |
+--------------------+
| entreprise         |
| haribo             |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| poles              |
| portfolio          |
| shaymae            |
| shaymaee           |
| site wordpress     |
| test               |
| teste              |
+--------------------+

-- 3/4/5--

-- Crée une table nommé "Table stagiaire"
CREATE TABLE stagiaires(id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
prenom varchar(100) NOT NULL, yeux varchar(30) NOT NULL, genre enum('m', 'f') NOT NULL
);

-- Table Bonbons
CREATE TABLE bonbons (id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
nom varchar(100) NOT NULL, saveur varchar(100) NOT NULL );

--Reagrder la tables
show tables;
+------------------+
| Tables_in_haribo |
+------------------+
| bonbons          |
| stagiaires       |
+------------------+

-- Table Bonbon mangés par les Stagiaires
CREATE TABLE candisplay(id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL, id_bonbon INT(11) DEFAULT NULL, id_stagiaire INT(11) DEFAULT NULL, date_manger DATE NOT NULL, quantite INT(11) NOT NULL);



-------------------------------------------------------AJOUTER DES ELEMENT AU TABLEAU--------------------------------------------------------------

INSERT INTO stagiaires(prenom, yeux, genre) VALUES (' Tom', 'vert', 'm'),(' Nouha', 'vert', 'm'),(' Nassim', 'marron', 'm'), (' Kevin', 'noir', 'm'), (' Shaymae', 'noir', 'f'), (' Delia', 'marron', 'f'),('Dominique', 'vert', 'm'),('Yadaf', 'marron', 'm');
Query OK, 8 rows affected (0.003 sec)
Records: 8  Duplicates: 0  Warnings: 0

MariaDB [haribo]> select * from stagiaires
    -> ;
+----+-----------+--------+-------+
| id | prenom    | yeux   | genre |
+----+-----------+--------+-------+
|  1 | Yacine    | marron | m     |
|  2 | Hafsa     | marron | f     |
|  3 | Henri     | Henri  | m     |
|  4 |  Tom      | vert   | m     |
|  5 |  Nouha    | vert   | m     |
|  6 |  Nassim   | marron | m     |
|  7 |  Kevin    | noir   | m     |
|  8 |  Shaymae  | noir   | f     |
|  9 |  Delia    | marron | f     |
| 10 | Dominique | vert   | m     |
| 11 | Yadaf     | marron | m     |
+----+-----------+--------+-------+
-------------------------------------------------------AJOUTER DES ELEMENT AU TABLEAU bonbon--------------------------------------------------------------

INSERT  INTO bonbons (nom, saveur) VALUES ('dragibus', 'cola'),
('tagada', 'fraise'), ('bams', 'banane'),('rotaled', 'reglisse'),
('floppys', 'sucre'), ('rainbollows', 'marshmallow'),('bigharri', 'cerise'),('oursor', 'fruits'),('croco', 'fruits'),('oeufoplat','fruits'),('flanbotti', 'caramel');

-----------------------------------------------------------------------------------------------------------------------------------------------------------

-- INSERT INTO candisplay

INSERT INTO candisplay(id_bonbon, id_stagiaire, date_manger, quantite)
VALUE(4, 7, '2022-06-20', 5);

INSERT INTO candisplay(id_bonbon, id_stagiaire, date_manger, quantite) VALUES (1, 1, '2022-06-05', 5),(2, 2, '2022-06-03', 5),(3, 3, '2022-06-04', 5),(5, 4, '2022-06-15', 5),(6, 5, '2022-06-18', 5),
(7, 6, '2022-06-22', 5),(8, 8, '2022-06-25', 5),(9, 9, '2022-06-24', 5),
(10, 10, '2022-06-01', 5),(11, 11, '2022-06-06', 5);

---------------------------------------------------------------------E X E R C I C E-----------------------------------------------------------------------

-- Lister les tables de la BDD **haribo**
[haribo]> SHOW TABLES;
+------------------+
| Tables_in_haribo |
+------------------+
| bonbons          |
| candisplay       |
| stagiaires       |
+------------------+

--Voir les paramètre de la tables *bonbons*
DESCRIBE bonbons;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| id     | int(11)      | NO   | PRI | NULL    | auto_increment |
| nom    | varchar(100) | NO   |     | NULL    |                |
| saveur | varchar(100) | NO   |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+

-- Séléctionner tous les champs de tous les enregistrement de la table *Stagiaires*
select * from stagiaires;
+----+-----------+--------+-------+
| id | prenom    | yeux   | genre |
+----+-----------+--------+-------+
|  1 | Yacine    | marron | m     |
|  2 | Hafsa     | marron | f     |
|  3 | Henri     | Henri  | m     |
|  4 |  Tom      | vert   | m     |
|  5 |  Nouha    | vert   | m     |
|  6 |  Nassim   | marron | m     |
|  7 |  Kevin    | noir   | m     |
|  8 |  Shaymae  | noir   | f     |
|  9 |  Delia    | marron | f     |
| 10 | Dominique | vert   | m     |
| 11 | Yadaf     | marron | m     |
+----+-----------+--------+-------+

-- Rajouter un nouveau stagiaire *NimatuLlah* en forçant la numérotation de l'id
insert into stagiaires (id, prenom, yeux, genre) VALUES (15, 'NiamtuLlah', 'marron', 'm');
Query OK, 1 row affected (0.003 sec)

MariaDB [haribo]> select * from stagiaires;
+----+------------+--------+-------+
| id | prenom     | yeux   | genre |
+----+------------+--------+-------+
|  1 | Yacine     | marron | m     |
|  2 | Hafsa      | marron | f     |
|  3 | Henri      | Henri  | m     |
|  4 |  Tom       | vert   | m     |
|  5 |  Nouha     | vert   | m     |
|  6 |  Nassim    | marron | m     |
|  7 |  Kevin     | noir   | m     |
|  8 |  Shaymae   | noir   | f     |
|  9 |  Delia     | marron | f     |
| 10 | Dominique  | vert   | m     |
| 11 | Yadaf      | marron | m     |
| 15 | NiamtuLlah | marron | m     |
+----+------------+--------+-------+

-- Rajouter dans la table Bonbons que theo a mangé 5 bonbons

-- Cree la table tagada purple
INSERT  INTO bonbons (nom, saveur) VALUES ('tagada', 'purple');

INSERT INTO candisplay(id_bonbon, id_stagiaire, date_manger, quantite) VALUES (12, 16, '2022-06-16', 5);

-- Selectionner tous les noms des bonbons en enlevant les doublons
select DISTINCT nom from bonbons;
+-------------+
| nom         |
+-------------+
| dragibus    |
| tagada      |
| bams        |
| rotaled     |
| floppys     |
| rainbollows |
| bigharri    |
| oursor      |
| croco       |
| oeufoplat   |
| flanbotti   |
+-------------+

-- Récuperer les couleurs des yeux des stagiaires (Séléctionner plusieurs champs dans une table)
select prenom, yeux from stagiaires group by yeux;
+--------+--------+
| prenom | yeux   |
+--------+--------+
| Theo   | Bleu   |
| Henri  | Henri  |
| Yacine | marron |
|  Kevin | noir   |
|  Tom   | vert   |
+--------+--------+

-- Séléctionner le stagiaires dont l'id = 5
select * from stagiaires where id=5; /*where=qui*/
+----+--------+------+-------+
| id | prenom | yeux | genre |
+----+--------+------+-------+
|  5 |  Nouha | vert | m     |
+----+--------+------+-------+

-- Séléctionner tous les stagiaire qui ont les yeux marron8s
Select * from stagiaires where yeux= 'marron';
+----+------------+--------+-------+
| id | prenom     | yeux   | genre |
+----+------------+--------+-------+
|  1 | Yacine     | marron | m     |
|  2 | Hafsa      | marron | f     |
|  6 |  Nassim    | marron | m     |
|  9 |  Delia     | marron | f     |
| 11 | Yadaf      | marron | m     |
| 15 | NiamtuLlah | marron | m     |
+----+------------+--------+-------+

-- séléctionner tous stagiaires  dont l'id est plus grand que 8;
 select * from stagiaires where id > 8;
+----+------------+--------+-------+
| id | prenom     | yeux   | genre |
+----+------------+--------+-------+
|  9 |  Delia     | marron | f     |
| 10 | Dominique  | vert   | m     |
| 11 | Yadaf      | marron | m     |
| 15 | NiamtuLlah | marron | m     |
| 16 | Theo       | Bleu   | m     |
+----+------------+--------+-------+

-- Séléctionner tous les stagiaires saud celui dont l'id est 11;
 select * from stagiaires where id !=11;
+----+------------+--------+-------+
| id | prenom     | yeux   | genre |
+----+------------+--------+-------+
|  1 | Yacine     | marron | m     |
|  2 | Hafsa      | marron | f     |
|  3 | Henri      | Henri  | m     |
|  4 | Tom        | vert   | m     |
|  5 | Nouha      | vert   | m     |
|  6 | Nassim     | marron | m     |
|  7 | Kevin      | noir   | m     |
|  8 | Shaymae    | noir   | f     |
|  9 | Delia      | marron | f     |
| 10 | Dominique  | vert   | m     |
| 15 | NiamtuLlah | marron | m     |
| 16 | Theo       | Bleu   | m     |
+----+------------+--------+-------+

-- Séléctionner tous les stagiaires qui ont un id inferieur ou egal a 10
 select * from stagiaires where id<=10;
+----+-----------+--------+-------+
| id | prenom    | yeux   | genre |
+----+-----------+--------+-------+
|  1 | Yacine    | marron | m     |
|  2 | Hafsa     | marron | f     |
|  3 | Henri     | Henri  | m     |
|  4 |  Tom      | vert   | m     |
|  5 |  Nouha    | vert   | m     |
|  6 |  Nassim   | marron | m     |
|  7 |  Kevin    | noir   | m     |
|  8 |  Shaymae  | noir   | f     |
|  9 |  Delia    | marron | f     |
| 10 | Dominique | vert   | m     |
+----+-----------+--------+-------+

-- Séléctionner tous les stagiaires dont l'id est compris entre 7 et 11
select * from stagiaires where id between 7 and 11;
+----+-----------+--------+-------+
| id | prenom    | yeux   | genre |
+----+-----------+--------+-------+
|  7 |  Kevin    | noir   | m     |
|  8 |  Shaymae  | noir   | f     |
|  9 |  Delia    | marron | f     |
| 10 | Dominique | vert   | m     |
| 11 | Yadaf     | marron | m     |
+----+-----------+--------+-------+

-- Séléctionner les stagiaires dont le prenom commence par un 'd'
select * from stagiaires where genre = 'f' order by id desc;
+----+----------+--------+-------+
| id | prenom   | yeux   | genre |
+----+----------+--------+-------+
|  9 |  Delia   | marron | f     |
|  8 | Shaymae  | noir   | f     |
|  2 | Hafsa    | marron | f     |
+----+----------+--------+-------+

-- Séléctionner les stagiaires hommes par prenom dans l'ordre alphabétique
select * from stagiaires where genre = 'm' order by prenom ASC;
+----+------------+--------+-------+
| id | prenom     | yeux   | genre |
+----+------------+--------+-------+
|  4 |  Tom       | vert   | m     |
|  7 |  Kevin     | noir   | m     |
|  6 |  Nassim    | marron | m     |
|  5 |  Nouha     | vert   | m     |
| 10 | Dominique  | vert   | m     |
|  3 | Henri      | Henri  | m     |
| 15 | NiamtuLlah | marron | m     |
| 16 | Theo       | Bleu   | m     |
|  1 | Yacine     | marron | m     |
| 11 | Yadaf      | marron | m     |
+----+------------+--------+-------+

-- Trier les stagiaires en affichant les femmes en premier et en classant les couleurs des yeux dans l'ordre alphabetique.
 SELECT * FROM stagiaires ORDER BY genre DESC, yeux ASC;
+----+------------+--------+-------+
| id | prenom     | yeux   | genre |
+----+------------+--------+-------+
|  2 | Hafsa      | marron | f     |
|  9 |  Delia     | marron | f     |
|  8 |  Shaymae   | noir   | f     |
| 16 | Theo       | Bleu   | m     |
|  3 | Henri      | Henri  | m     |
| 15 | NiamtuLlah | marron | m     |
| 11 | Yadaf      | marron | m     |
|  1 | Yacine     | marron | m     |
|  6 |  Nassim    | marron | m     |
|  7 |  Kevin     | noir   | m     |
| 10 | Dominique  | vert   | m     |
|  5 |  Nouha     | vert   | m     |
|  4 |  Tom       | vert   | m     |
+----+------------+--------+-------+

-- Limiter l'affichage d'une requête de séléction de tous les stagiaires aux 3 premieres resultats
select * from stagiaires limit 3;
+----+--------+--------+-------+
| id | prenom | yeux   | genre |
+----+--------+--------+-------+
|  1 | Yacine | marron | m     |
|  2 | Hafsa  | marron | f     |
|  3 | Henri  | Henri  | m     |
+----+--------+--------+-------+