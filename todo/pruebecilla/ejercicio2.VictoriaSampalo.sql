/*VICTORIA SAMPALO GARCÍA 
EJERCICIO 2*/
/*Obtener número de materias matriculadas de cada alumno
puede haber alumnos que no tengan ninguna materia matriculada
*/

select concat_ws(' ',alumnos.nomalum, alumnos.ape1alum, alumnos.ape2alum )as Alumno,
		count(*) as numero

from materias  join matriculas
			on matriculas.codmateria = materias.codmateria
				join alumnos
                on alumnos.numexped = matriculas.numexped
group by alumnos.numexped; 


        
-- OTRA FORMA, AQUÍ SALEN ALUMNOS QUE TIENEN 0 MATERIAS. . 

select concat_ws(' ',alumnos.nomalum, alumnos.ape1alum, alumnos.ape2alum) as Alumno,
		-- count(*) as numero
        count(materias.codmateria) as numero
        -- count(distinc)
from materias join matriculas
			on matriculas.codmateria = materias.codmateria
				right join alumnos
                on alumnos.numexped = matriculas.numexped
group by concat_ws(' ',alumnos.nomalum, alumnos.ape1alum, alumnos.ape2alum)
order by numero; 


