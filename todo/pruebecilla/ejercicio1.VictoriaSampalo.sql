/*VICTORIA SAMPALO GARCÍA 
EJERCICIO 1*/
/*Obtener el numero de alumnos matriculados en cada materia y la nota media de la materia
*/
use GBDgestionaTests;


select  materias.nommateria as Materia,
		count(matriculas.numexped)as Alumnos,
        round(avg(matriculas.nota),1) as NotaMedia

from alumnos join matriculas
			on alumnos.numexped = matriculas.numexped
            join materias
            on matriculas.codmateria = materias.codmateria
		
group by matriculas.codmateria; 

-- NO HACIA FALTA UNIR 3 TABLAS

select materias.nomamateria, count(*)
round(avg(matriculas.nota),1) as NotaMedia
from materias join matriculas on materias.codmateria = matriculas.comateria
group by materias.nommateria; 
