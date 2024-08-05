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