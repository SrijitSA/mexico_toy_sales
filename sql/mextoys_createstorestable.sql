if OBJECT_ID('mextoys..stores', 'U') is not null
	drop table mextoys..stores;

create table mextoys..stores (
Store_ID int primary key identity(1,1),
Store_Name varchar(50) not null,
Store_City varchar(20) not null,
Store_Location varchar(20) not null,
Store_Open_Date DATE
);

insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Guadalajara 1', 'Guadalajara', 'Residential', '1992-09-18');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Monterrey 1', 'Monterrey', 'Residential', '1995-04-27');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Guadalajara 2', 'Guadalajara', 'Commercial', '1999-12-27');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Saltillo 1', 'Saltillo', 'Downtown', '2000-01-01');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys La Paz 1', 'La Paz', 'Downtown', '2001-05-31');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Mexicali 1', 'Mexicali', 'Commercial', '2003-12-13');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Monterrey 2', 'Monterrey', 'Downtown', '2003-12-25');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Pachuca 1', 'Pachuca', 'Downtown', '2004-10-14');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Ciudad de Mexico 1', 'Cuidad de Mexico', 'Downtown', '2004-10-15');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Campeche 1', 'Campeche', 'Downtown', '2005-01-14');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Cuernavaca 1', 'Cuernavaca', 'Downtown', '2005-04-19');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Chetumal 1', 'Chetumal', 'Downtown', '2006-05-05');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Mexicali 2', 'Mexicali', 'Downtown', '2006-08-30');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Guanajuato 1', 'Guanajuato', 'Downtown', '2007-01-31');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Tuxtla Gutierrez 1', 'Tuxtla Gutierrez', 'Downtown', '2007-03-05');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys San Luis Potosi 1', 'San Luis Potosi', 'Downtown', '2007-05-19');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Toluca 1', 'Toluca', 'Downtown', '2007-12-09');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Merida 1', 'Merida', 'Downtown', '2008-08-22');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Puebla 1', 'Puebla', 'Commercial', '2008-12-16');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Zacatecas 1', 'Zacatecas', 'Downtown', '2009-05-29');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Santiago 1', 'Santiago', 'Downtown', '2009-11-23');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Guanajuato 2', 'Guanajuato', 'Commercial', '2010-03-29');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Chihuahua 1', 'Chihuahua', 'Commercial', '2010-06-12');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Aguascalientes 1', 'Aguascalientes', 'Downtown', '2010-07-31');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Ciudad Victoria 1', 'Ciudad Victoria', 'Downtown', '2010-09-08');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Campeche 2', 'Campeche', 'Commercial', '2010-09-15');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Oaxaca 1', 'Oaxaca', 'Downtown', '2010-10-02');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Puebla 2', 'Puebla', 'Downtown', '2011-04-01');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Xalapa 1', 'Xalapa', 'Commercial', '2011-06-21');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Guadalajara 3', 'Guadalajara', 'Airport', '2011-10-20');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Ciudad de Mexico 2', 'Cuidad de Mexico', 'Airport', '2012-05-04');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Hermosillo 1', 'Hermosillo', 'Residential', '2012-08-31');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Monterrey 3', 'Monterrey', 'Airport', '2013-03-17');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Villahermosa 1', 'Villahermosa', 'Downtown', '2013-06-07');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Chilpancingo 1', 'Chilpancingo', 'Downtown', '2013-06-11');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Morelia 1', 'Morelia', 'Downtown', '2013-07-01');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Ciudad de Mexico 3', 'Cuidad de Mexico', 'Residential', '2013-11-28');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Chihuahua 2', 'Chihuahua', 'Downtown', '2014-03-18');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Xalapa 2', 'Xalapa', 'Downtown', '2014-04-21');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Toluca 2', 'Toluca', 'Commercial', '2014-05-27');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Hermosillo 2', 'Hermosillo', 'Downtown', '2014-06-01');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Hermosillo 3', 'Hermosillo', 'Commercial', '2014-06-27');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Durango 1', 'Durango', 'Downtown', '2014-06-30');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Puebla 3', 'Puebla', 'Residential', '2014-12-27');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Ciudad de Mexico 4', 'Cuidad de Mexico', 'Commercial', '2015-06-21');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Guadalajara 4', 'Guadalajara', 'Downtown', '2015-10-31');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Monterrey 4', 'Monterrey', 'Commercial', '2015-11-21');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Saltillo 2', 'Saltillo', 'Commercial', '2016-03-23');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Culiacan 1', 'Culiacan', 'Downtown', '2016-05-10');
insert into mextoys..stores(Store_Name, Store_City, Store_Location, Store_Open_Date)output inserted.Store_ID 
	values('Maven Toys Guanajuato 3', 'Guanajuato', 'Residential', '2016-05-18');


select * from mextoys..stores;

