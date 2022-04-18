/*EJERCICIO PROYECTO OPERACIONES CRUD COMPLEJA. TABLA PERSONAS*/
use GBDnutricodd;

/*BUSCAR PERSONAS*/
drop procedure if exists buscaPersonas;
delimiter $$
create procedure buscaPersonas()
begin
	select personas.codPersona as 'Número Persona',
    concat_ws(' ', nombre, apel1, apel2 ) as Nombre
    from personas join hospitales 
		on hospitales.codHospital = personas.codHospital
    order by hospitales.codHospital;
end $$
delimiter ;


call buscaPersona(10);


