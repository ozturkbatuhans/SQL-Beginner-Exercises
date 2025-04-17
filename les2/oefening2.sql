--Batuhan Ozturk
--2.1
select uitgever, upper(left(uitgever,1) + right(uitgever,1))
from Uitgever

select uitgever, upper(substring(uitgever,1,1) + substring(uitgever, len(uitgever),1))
from uitgever

--2.2
select max(jaar) as [jongste], min(jaar) as [oudste]  
from boek 

--2.3
select titel 
from boek 
where titel like 'p%'

select titel 
from boek 
where left(titel,1) = 'p'

--2.4
select count(*) as aantal 
from Uitleen

--2.5
select Categorie, len(categorie) as aantalletters
from Categorie

--geef enkel de uitleningen na 2 mei 2008
select *
from Uitleen 
where datum > '20080502'

select *
from Uitleen 
where datum > '2008-05-02'

