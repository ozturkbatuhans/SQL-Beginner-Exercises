select klant_id
from klant

select Klant.klant_id
from Klant

select * from boek
select * from Auteur

select titel, Naam 
from boek, auteur
where Auteur.Auteur_id = Boek.boek_id

select titel, Naam, uitgever, boek.auteur_id
from boek, auteur, Uitgever
where Auteur.Auteur_id = Boek.auteur_id
	and Uitgever.uitg_id = Boek.uitg_id


select auteur_id 
from Auteur
where naam = 'claus'
select titel 
from boek
where auteur_id = 3

select titel, Naam
from boek,Auteur
where naam = 'claus'
	and Auteur.Auteur_id = Boek.auteur_id
 
select titel, Naam 
from boek, auteur
where Auteur.Auteur_id = Boek.boek_id

----2.1 Geef voor alle uitgevers de naam 
--en een code in hoofdletters, 
--gevormd door de eerste letter 
--en laatste letter van de naam van 
--uitgever (7 rows)

select uitgever, upper( left(uitgever,1) + right(uitgever,1)) as code
from uitgever

select uitgever, upper( substring(uitgever,1,1) 
	+ SUBSTRING(uitgever, len(uitgever), 1)) as code
from uitgever

----2.2 Toon het grootste en het 
--kleinste uitgiftejaar van de boeken (1 row)
select max(jaar) as [jongste], min(jaar) as oudste 
from boek


----2.3 Toon de titels van de boeken 
--die beginnen met de letter ‘P’ (3 rows)
select titel
from boek
where left(titel,1) = 'p'

select titel
from boek
where titel like 'p%'
----2.4 Hoeveel uitleningen werden 
--reeds gedaan (1 rows)
select count(*) as aantalUitleningen from uitleen
----2.5 Toon de namen van de 
--categorieën en het aantal letters 
--waaruit de naam bestaat (3 rows)
select categorie, len(categorie) as aantalLetters
from Categorie

--geef enkel de uitleningen na 2 mei 2008
select * from uitleen
where datum > '2008-05-02'

select * from uitleen
where datum > '20080502'

--3.1   Geef de titel van elk boek en de 
--naam van de uitgever waar het boek werd uitgegeven. 
--(20 rows)

select * from boek
select * from Uitgever

select titel, uitgever
from boek, uitgever
where uitgever.uitg_id = Boek.uitg_id