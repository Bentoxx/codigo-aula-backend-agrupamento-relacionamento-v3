--Quantos alunos estudam em Hogwarts?
select count(*) as countStudants from studants;

--Quantos alunos com menos de 5 anos estudam em Hogwarts?
select count(*) from studants where year < 5;

--Qual a média de idade dos alunos estudantes em Hogwarts?
select avg(year) from studants;

--Qual a menor idade existente na tabela studants?
select min(year) from studants;

--Quantos alunos tem em cada ano?
select year, count(id) from studants group by year;

--Quantos alunos tem cada casa?
select house_id, count(id) from studants group by house_id;

--Quantos alunos com menos de 4 anos tem cada casa?
select house_id, count(id) from studants where year < 4 group by house_id;

--Criando relacionamento entre tabelas (cardinalidade 1:1):
select teachers.id, teachers.name, teachers.house_id, houses.name, classes.id as class_id, classes.subject
join classes on teacher.id = classes.teacher_id
join houses on teachers.house_id = houses.id;

--Criando relacionamento entre tabelas (cardinalidade 1:1):
select s.house_id, h.name, s.id as studant_id, s.name, s.year
from house as h
join studants as s on h.id = s.house_id;

select house_id count(id) from studants group by house_id;

select h.name as house_name, count (s.id) as studantCount
from houses as h
join studants as s on s.house_id = h.id
group by house_name;