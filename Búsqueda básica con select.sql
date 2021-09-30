select
titulo, genero
from
libro
where
(genero = 'Erotico' 
OR
genero = 'Ficcion') 
AND
titulo like 'B%';
