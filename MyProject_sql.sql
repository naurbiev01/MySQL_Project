
select * from autos;
-- 1
select make as 'Марка', model as 'модель', 
generation as 'Генерация', year_from 'Год выпуска'
from autos;

-- 2
select make from autos 
where generation = '1 generation';

-- 3
select make, year_from from autos 
where year_from >= 1999;

-- 4
select make, year_from, year_to from autos
where year_from >= 2001 and year_to <= 2009;
select make, year_from, year_to from autos
where year_from between 2001 and 2009;

-- 5
select make, model from autos 
where not make = 'Audi' and not make = 'Acura';
select make, model from autos 
where not make in ('Audi','Acura');

-- 6
select make, model, year_from, year_to, generation
from autos
where year_from > 1990 and 
not generation  = '1 generation';

-- 7
select make, model, year_from, year_to 
from autos
where make in ('AC','_ovovo') 
order by make
limit 10; 

select * from autos;


select make, model, year_from, year_to from autos 
where year_from like '_0%' or year_to like '_0%';