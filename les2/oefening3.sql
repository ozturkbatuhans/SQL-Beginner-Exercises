--Batuhan Ozturk
--3.1
select titel, uitgever 
from boek, uitgever
where uitgever.uitg_id = boek.uitg_id

--3.2
select datum, klantnaam
from uitleen, klant
where uitleen.klant_id = klant.klant_id

--3.3

select titel, uitgever
from Boek, Uitgever
where Boek.uitg_id = Uitgever.uitg_id

--3.4
select datum, titel, klantnaam
from Uitleen, Boek, Klant
where Uitleen.klant_id = Klant.klant_id
and Boek.boek_id = Uitleen.boek_id

--3.5
select jaar, titel, categorie
from Boek, Categorie
where jaar > '1980'
and Boek.cat_id = categorie.cat_id