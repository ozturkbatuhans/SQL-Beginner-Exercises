--Batuhan Ozturk
--5.1
select titel, naam
from Boek
join Auteur on Boek.Auteur_id = Auteur.Auteur_id

--5.2
select titel, naam, uitgever
from Boek
join Auteur
on Boek.Auteur_id = Auteur.Auteur_id 
join Uitgever
on Uitgever.uitg_id = Boek.uitg_id

--5.3
select jaar, titel, categorie
from Boek
join Categorie 
on Categorie.cat_id = Boek.cat_id
where jaar > '1976'

--5.4
select titel, Naam
from Boek
join Auteur
on Boek.auteur_id = Auteur.auteur_id
where Naam = 'Elsschot' or Naam = 'Jennings'

--5.5
select min(datum) as [laatste datum]
from Uitleen
join boek on Boek.boek_id = Uitleen.boek_id
join Auteur on Auteur.Auteur_id = Boek.auteur_id
where Auteur.Naam = 'zinzen'

--6.1
select count(distinct jaar) as [aantal jaartallen]
from Boek

--6.2
select count(distinct klant_id) as [verschillende klant],
count(distinct datum) as [verschillende datums]
from Uitleen

--6.3
select min(jaar) as [eerste jaar]
from Boek

--6.4
select min(jaar) as [eerste jaar]
from Boek
join Auteur on Auteur.Auteur_id = Boek.auteur_id
where Auteur.Naam = 'Claus'

select min(jaar) as [eerste jaar]
from boek
where auteur_id =
       (select auteur_id 
        from auteur 
        where Naam='claus')

--6.5
select max(jaar) - min(jaar) as [verschil]
from Boek

--6.6
select left(klantnaam,1) as [eerste letter]
from Klant
where klantnaam =
				(select max(klantnaam)
				from klant)

--6.7
select avg(len(klantnaam))as [gemiddelde lengte],
		max(len(klantnaam)) as [lengte langste naam]
from klant

--6.8
select max(datum) as [laatste uitleendatum]
from uitleen

--6.9
select