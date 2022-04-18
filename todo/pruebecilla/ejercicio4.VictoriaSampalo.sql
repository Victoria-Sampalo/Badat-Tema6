/*VICTORIA SAMPALO GARCÍA 
EJERCICIO 4*/
/*Obtener numero de preguntas que tiene cada test
*/

select tests.descrip as nom_test,
		tests.codtest as numero_test,
		ifnull(count(preguntas.numpreg), 0) as 'nº Preguntas'
from preguntas right join tests
	on preguntas.codtest = tests.codtest
group by tests.codtest;


/*obtener el numero de test que ha realizado el alumno 1*/
select alumnos.numexped,
		count(distinct respuestas.codtest)
from alumnos join respuestas on alumnos.numexped = respuestas.numexped
where respuestas.numexped = '1'
group by  