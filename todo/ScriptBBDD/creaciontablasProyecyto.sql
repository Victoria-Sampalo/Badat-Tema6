/*BBDD PROYECTO: HOSPITALL*/
create database if not exists GBDnutricodd;

use GBDnutricodd;

create table if not exists hospitales 
(
codHospital int unsigned,
nomHospital varchar(60) not null,
cip char(9) default null,
dirHospital varchar(200) not null,
tlfnHospital char(12) default null, 
horario varchar(200) null,
constraint pk_hospitales primary key (codHospital)
);

create table if not exists personas
(
codPersona int unsigned,
codHospital int unsigned,
dni char(9) not null, 
nombre varchar(20)not null, 
apel1  varchar(20)not null, 
apel2  varchar(20) null, 
email varchar(60)default null, 
tlfnPerson char(12) unique, 
fecNacim date not null, 
sexo char(1) not null, -- m = masc. y   f= fem. 
dirPerson varchar(100) default null,
poblacion varchar (60) default null,
codpostal char(6) default null,
constraint pk_personas primary key (codPersona),
constraint fk_personas_hospitales foreign key (codHospital)
	references hospitales (codHospital)
	on delete no action on update cascade
);


drop table if exists personal;
create table if not exists personal
(
codPersonal int unsigned,
codHospital int unsigned,
codPerson int  unsigned,
numContrat varchar(12) not null,
sueldo decimal (9,2),
fecinicontrat date not null,
fecfincontrat date default null,
constraint pk_personal primary key (codPersonal),
constraint fk_personal_hospitales foreign key (codHospital)
references hospitales (codHospital)
	on delete no action on update cascade,
constraint fk_personal_personas foreign key (codPerson)
references personas (codPersona)
	on delete no action on update cascade
);

