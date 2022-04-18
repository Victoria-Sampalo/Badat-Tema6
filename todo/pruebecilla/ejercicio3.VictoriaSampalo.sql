/*VICTORIA SAMPALO GARCÍA 
EJERCICIO 3*/
/*Obtener el numero de los alumnos matriculados en cada materia,
la nota media de la materia,
y el numexpediente de los alumnos. 
*/

-- CORRECCIÓN
SELECT concat_ws(' - ', materias.nommateria, materias.cursomateria) as 'Materia',
		ifnull(count(matriculas.numexped), 0) as 'nº alum',
		round(avg(matriculas.nota),1) as NotaMedia,
		max(matriculas.nota) as 'NotaMaxima',
    
    (select m.numexpend from matriculas as m -- clon matriculas
        where m.nota = max(matriculas.nota) and
        m.codmateria= matriculas.codmateria)
        as 'nº expediente'
from matriculas join materias 
	on matriculas.codmateria = materias.codmateria
group by matriculas.codmateria; 
    
SELECT concat_ws(' - ', materias.nommateria, materias.cursomateria) as 'Materia', 
	ifnull(count(matriculas.numexped), 0) as 'Nº Alumnos', 
	round(avg(matriculas.nota), 2) as 'Nota media',
	max(matriculas.nota) as 'Nota máxima',
    
    (select m.numexped 
    from matriculas as m
   where m.nota = max(matriculas.nota) and m.codmateria = matriculas.codmateria
    ) as 'Nº expediente'

FROM matriculas JOIN materias on matriculas.codmateria = materias.codmateria
GROUP BY matriculas.codmateria;


-- CORRECCION EVA

select matriculas.codmateria, count(*) as numero_alumnos,
round(avg(matriculas.nota), 2) as 'Nota media',
(select numexped
from matriculas as m
where m.codmateria = matriculas.codmateria
	and nota = (select max(nota)
    ))


-- INTENTOS DE MIERDA

select  materias.nommateria as Materia,
		count(matriculas.numexped)as Alumnos,
        round(avg(matriculas.nota),1) as NotaMedia

from alumnos join matriculas
			on alumnos.numexped = matriculas.numexped
            join materias
            on matriculas.codmateria = materias.codmateria
		
group by matriculas.codmateria; 

/*no se puede realizar por numexpediente porque agrupas y luego preguntas por filas individuales.

Sergio ha añadido:
Obtener el numero de los alumnos matriculados en cada materia,
la nota media de la materia,
y 
numde expediente con la nota mas alta en la materia 
*/

delimiter $$

drop procedure if exists proc_3 $$

create procedure proc_3(out MejorNota int)
begin 
select  materias.nommateria as Materia,
		count(matriculas.numexped)as Alumnos,
        round(avg(matriculas.nota),1) as NotaMedia,
        
        matriculas.numexped as MejorExpediente,
        
        concat_ws(' ',alumnos.nomalum, alumnos.ape1alum, alumnos.ape2alum )as Alumno
        

from alumnos join matriculas
			on alumnos.numexped = matriculas.numexped
            join materias
            on matriculas.codmateria = materias.codmateria
having MejorNota = select max(nota)
					from matriculas)



end $$

delimiter ;


select max(matriculas.nota),
	   alumnos.numexped as Expediente
        
from alumnos join matriculas
		on alumnos.numexped = matriculas.numexped
        
group by alumnos.numexped;



/*INTENTO 3*/
select  materias.nommateria as Materia,
		count(matriculas.numexped)as Alumnos,
        round(avg(matriculas.nota),1) as NotaMedia,
        
		 max(matriculas.nota) as MejorNota,
         alumnos.codexped as Expediente
        
     --   concat_ws(' ',alumnos.nomalum, alumnos.ape1alum, alumnos.ape2alum )as Alumno
from alumnos join matriculas
			on alumnos.numexped = matriculas.numexped
            join materias
            on matriculas.codmateria = materias.codmateria			

where Expediente = 

group by materias.codmateria; 




