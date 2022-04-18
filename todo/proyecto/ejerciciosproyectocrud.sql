/*EJERCICIO PROYECTO OPERACIONES CRUD. TABLA HOSPITALES*/

use GBDnutricodd;

/*BUSCAR HOSPITAL*/
drop procedure if exists buscaHospital;
delimiter $$
create procedure buscaHospital()
begin
	select hospitales.codHospital as 'Número Hospital',
    hospitales.nomHospital as 'Nombre Hospital'
    from hospitales
    order by hospitales.codHospital;
end $$

delimiter ;
call buscaHospital(10);

/*Insertar HOSPITAL*/

delimiter $$
drop procedure if exists insertaHospital $$
create procedure insertaHospital(
in nombre varchar(60),
in cip char(9),
in dir varchar(200),
out resultado int
)
begin
	declare nuevoHospital int;
    start transaction;
    set nuevoHospital = (select max(codHospital)+10 
						from hospitales);
	insert into hospitales
    (codHospital, nomHospital, cip, dirHospital)
    values
	(nuevoHospital, nombre, cip, dir);
    commit;
    set resultado = nuevoHospital;
    
end $$
delimiter ;

call insertaHospital('Clinica Dr Buduah', '29601', 'Avenida Ricardo Sorano 99', @resultado);

select * from hospitales;

/*Buscar un hospita*/
delimiter $$
drop procedure if exists buscaUnHospital $$
create procedure buscaUnHospital
(in numero int)
begin
select * from hospitales 
where hospitales.codHospital = numero;
end $$
delimiter ;

call buscaUnHospital(30);

/*UPDATE HOSPITAL*/
delimiter $$
drop procedure if exists actualizaHospital $$
create procedure actualizaHospital
(in numero int,
in nombre varchar(60),
in cip char(9),
in dir varchar(200)
)
begin 
	update hospitales
    set	
		nomHospital = nombre,
        cip = cip,
        dirHospital = dir
   where numero = codHospital;
end $$
delimiter ;

call actualizaHospital()

/*ELIMINAR*/
delimiter $$
drop procedure if exists BorraHospital $$
create procedure BorraHospital
	(in numhospi int
     )
begin
    delete from hospitales
	where codHospital = numhospi;

end $$
delimiter ;

call BorraHospital(30);
select * from hospitales;


