create database PV_ALTA;
use pv_alta;
create table permisos(
id int primary key,
descripcion varchar(50)
);
create table usuario(
id int primary key,
Nombre varchar(50) not null,
passw varchar(30) not null,
id_permiso int,
usuario varchar(50),
foreign key (id_permiso) references permisos(id)
);
create table tipo_cambio(
id int primary key,
fecha date,
valor decimal(20,4)
);

create table clientes(
id_cliente int primary key,
nombre varchar(50),
direccion varchar(50),
codigo_p varchar(20),
ciudad varchar(30)
);

create table bitacora(
id_bit int primary key,
id_usuario int,
fecha date,
descripcion varchar (70),
foreign key(id_usuario) references usuario(id)
);
alter table pedidos drop foreign key pedidos_ibfk_3;
alter table tipo_cambio change id id int not null auto_increment;
alter table pedidos add foreign key (id_tipo_c) references tipo_cambio(id);
alter table bitacora drop foreign key bitacora_ibfk_1;
alter table pedidos drop foreign key pedidos_ibfk_2;
alter table usuario change id id int not null auto_increment; 
alter table bitacora add foreign key (id_usuario) references usuario(id);
alter table pedidos add foreign key (id_usuario) references usuario(id);
 

create table raza(
id int primary key,
nombre varchar(50)
);
alter table raza change id id int not null auto_increment;

create table toro(
id varchar(10) primary key,
nombre varchar(50),
id_raza int,
estatus varchar(10),
foreign key (id_raza)references raza(id));
alter table toro drop foreign key toro_ibfk_1;
alter table toro add foreign key (id_raza) references raza(id);

create table Subsidiaria(
id_empresa int primary key,
nombre varchar(50)
);
alter table subsidiaria add direccion varchar(50);

create table precios(
id_empresa int,
id_toro varchar(10),
precio_publico decimal(19,4),
desc_alta decimal(19,4),
apoyo decimal(19,4),
precio_productor decimal(19,4),
foreign key(id_empresa) references subsidiaria(id_empresa),
foreign key(id_toro) references toro(id)
);

create table termo(
id_termo int primary key,
numero_termo int
);

create table canastilla(
id_canastilla int primary key,
id_termo int,
num_canasta int,
foreign key (id_termo) references termo(id_termo)
);

create table semen(
id_canastilla int,
id_toro varchar(10),
unidades int,
foreign key(id_canastilla) references canastilla(id_canastilla),
foreign key(id_toro) references toro(id));

describe usuario;
describe tipo_cambio;

create table pedidos(
id_pedido varchar(10) primary key,
id_cliente int,
id_usuario int,
fecha_captura date,
fecha_entrega date,
id_tipo_c int,
estatus boolean,
total decimal(19,4),
foreign key(id_cliente)references clientes(id_cliente),
foreign key(id_usuario) references usuario(id),
foreign key(id_tipo_c) references tipo_cambio(id));


create table detalle_pedidos(
id int primary key,
id_pedido varchar(10),
unidades_vendidas int,
sub_total decimal(19,4),
foreign key(id_pedido) references pedidos(id_pedido));

create table sacado_de(
id_det int,
id_termo int,
foreign key (id_det) references detalle_pedidos(id),
foreign key(id_termo) references termo(id_termo)
);
alter table precios drop foreign key precios_ibfk_1;
alter table subsidiaria change id_empresa id_empresa int not null auto_increment; 
alter table precios add foreign key (id_empresa) references subsidiaria(id_empresa);
alter table usuario drop foreign key usuario_ibfk_1;
alter table permisos change id id int not null auto_increment;
alter table usuario add foreign key (id_permiso) references permisos(id);
alter table semen drop foreign key semen_ibfk_1;
alter table canastilla change id_canastilla id_canastilla int not null auto_increment;
alter table semen add foreign key (id_canastilla) references canastilla(id_canastilla);
select * from raza;
describe toro;
insert into raza values("Holstein");
insert into raza(nombre) values("Holstein Sexado");
insert into raza(nombre) values("Jersey");
insert into raza(nombre) values("Jersey Sexado");
-- insercion de toros
insert into toro values("011HO00586","ACE-RED",1,"Activo");
insert into toro values("011HO11272","GILCREST",1,"Activo");
insert into toro values("011HO11379","RABO",1,"Activo");
insert into toro values("011HO11380","ROBLE",1,"Activo");
insert into toro values("011HO11478","LEAF",1,"Activo");
insert into toro values("011HO11499","MEGLO",1,"Activo");
insert into toro values("011HO11690","TIM",1,"Activo");
insert into toro values("011HO11716","JOEBOT",1,"Activo");
insert into toro values("011HO11725","AMULET",1,"Activo");
insert into toro values("011HO11737","HIDALGO",1,"Activo");
insert into toro values("011HO11740","FACET",1,"Activo");
insert into toro values("011HO11749","CRAIG",1,"Activo");
insert into toro values("011HO11750","FLACCO",1,"Activo");
insert into toro values("011HO11758","NIXER",1,"Activo");
insert into toro values("011HO11767","CONCORD",1,"Activo");
insert into toro values("011HO11780","EDDIE",1,"Activo");
insert into toro values("011HO11786","FAD",1,"Activo");
insert into toro values("011HO11803","EXTRA",1,"Activo");
insert into toro values("011HO11813","TOOHOT",1,"Activo");
insert into toro values("011HO11823","TIEROD",1,"Activo");
insert into toro values("011HO11826","LOBELLO",1,"Activo");
insert into toro values("011HO11827","MIGHTY P",1,"Activo");
insert into toro values("011HO11855","ADMIN",1,"Activo");
insert into toro values("011HO11866","HUNTER",1,"Activo");
insert into toro values("011HO11884","MAYO",1,"Activo");
insert into toro values("011HO11887","MARATHON",1,"Activo");
insert into toro values("011HO11892","MAESTRO",1,"Activo");
insert into toro values("011HO11911","DOOZER",1,"Activo");
insert into toro values("011HO11957","DOSSIER",1,"Activo");
insert into toro values("011HO11963","SWAG",1,"Activo");
insert into toro values("011HO11970","JABBA",1,"Activo");
insert into toro values("011HO11982","SPRITE",1,"Activo");
insert into toro values("011HO11987","PUEBLO",1,"Activo");
insert into toro values("011HO11993","BOMBAST",1,"Activo");
insert into toro values("011HO12021","SPITFIRE",1,"Activo");
insert into toro values("011HO12024","EXPAT",1,"Activo");
insert into toro values("011HO12029","MODER8",1,"Activo");
insert into toro values("011HO12050","BIGFORK",1,"Activo");
insert into toro values("011HO12052","KALISPELL",1,"Activo");
insert into toro values("011HO12075","LIFELINE",1,"Activo");
insert into toro values("011HO12082","DPORT",1,"Activo");
insert into toro values("011HO12083","ANTONIO",1,"Activo");
insert into toro values("011HO12093","NITRO",1,"Activo");
insert into toro values("011HO12094","ADMIRAL",1,"Activo");
insert into toro values("011HO12109","LITEYEAR",1,"Activo");
insert into toro values("011HO12115","FORCE",1,"Activo");
insert into toro values("011HO12122","STARJACK",1,"Activo");
insert into toro values("011HO12123","SNAPCHAT",1,"Activo");
insert into toro values("011HO12124","GOPRO",1,"Activo");
insert into toro values("011HO12128","49ER",1,"Activo");
insert into toro values("011HO12148","WILLIE",1,"Activo");
insert into toro values("011HO12155","ALTUVE",1,"Activo");
insert into toro values("011HO12165","BUGGY",1,"Activo");
insert into toro values("011HO12168","GILMORE",1,"Activo");
insert into toro values("011HO12169","EMIRATES",1,"Activo");
insert into toro values("011HO12174","EXPLOSION",1,"Activo");
insert into toro values("011HO12191","KEUCHEL",1,"Activo");
insert into toro values("011HO12194","CABOT",1,"Activo");
insert into toro values("011HO12197","BIGBOY",1,"Activo");
insert into toro values("011HO12203","DARVISH",1,"Activo");
insert into toro values("011HO12204","ASIF",1,"Activo");
insert into toro values("011HO12206","RONDON",1,"Activo");
insert into toro values("011HO12208","KADERO",1,"Activo");
insert into toro values("011HO12228","OVACAO",1,"Activo");
insert into toro values("011HO12235","GINGER",1,"Activo");
insert into toro values("011HO12237","FLADON",1,"Activo");
insert into toro values("011HO12242","HATCHE",1,"Activo");
-- *************************************************
insert into toro values("011HO12225","ZZZ",1,"Activo");
insert into toro values("011HO12258","STAFFORD",1,"Activo");
insert into toro values("011HO12261","SIZZLER",1,"Activo");
insert into toro values("011HO12263","PINETTA",1,"Activo");
insert into toro values("011HO12275","ZIGZAG",1,"Activo");
insert into toro values("011HO12277","MOCON",1,"Activo");
insert into toro values("011HO12278","BENTON",1,"Activo");
insert into toro values("011HO12282","LOCH",1,"Activo");
insert into toro values("011HO12287","EDIFY",1,"Activo");
insert into toro values("011HO12293","BUNDLE",1,"Activo");
insert into toro values("011HO12308","GRUNGE",1,"Activo");
insert into toro values("011HO12311","GLO",1,"Activo");
insert into toro values("011HO12314","BLUEDEVIL",1,"Activo");
insert into toro values("011HO12317","AGOTADO",1,"Activo");
insert into toro values("011HO12326","DEBUG",1,"Activo");
insert into toro values("011HO12328","INDIGO",1,"Activo");
insert into toro values("011HO12329","MAUI",1,"Activo");
insert into toro values("011HO12333","RUBAN",1,"Activo");
insert into toro values("011HO12334","INDULGE",1,"Activo");
insert into toro values("011HO12342","CURRY",1,"Activo");
SELECT * FROM TORO ORDER BY ID_RAZA;
SELECT * FROM RAZA;

insert into toro values("511HO11716","JOEBOT",2,"Activo");
insert into toro values("511HO11725","AMULET",2,"Activo");
insert into toro values("511HO11750","FLACCO",2,"Activo");
insert into toro values("511HO11788","EMBOSS",2,"Activo");
insert into toro values("511HO11813","TOOHOT",2,"Activo");
insert into toro values("511HO11826","LOBELLO",2,"Activo");
insert into toro values("511HO11888","DURST",2,"Activo");
insert into toro values("511HO11957","DOSSIER",2,"Activo");
insert into toro values("511HO12000","REVIS",2,"Activo");
insert into toro values("511HO12050","BIGFORK",2,"Activo");
insert into toro values("511HO12115","FORCE",2,"Activo");
insert into toro values("511HO12093","NITRO",2,"Activo");
insert into toro values("511HO12177","SEVERINO",2,"Activo");
insert into toro values("511HO12226","LANSING",2,"Activo");
insert into toro values("511HO12264","ABBA",2,"Activo");
insert into toro values("511HO12275","ZIGZAG",2,"Activo");
insert into toro values("511HO12278","BENTON",2,"Activo");
insert into toro values("511HO12282","LOCH",2,"Activo");

-- JERSEY
SELECT * FROM RAZA;
insert into toro values("011EJ01179","VICEROY",3,"Activo");
insert into toro values("011EJ01308","RAZARRI",3,"Activo");
insert into toro values("011EJ01326","CHIVE",3,"Activo");
insert into toro values("011EJ01329","WISHBONE",3,"Activo");
insert into toro values("011EJ01338","RICHT",3,"Activo");
insert into toro values("011EJ01339","GRONK",3,"Activo");
insert into toro values("011EJ01348","ZIZIC",3,"Activo");
insert into toro values("011EJ01366","RASHFORD",3,"Activo");
insert into toro values("011EJ01369","MONTRA",3,"Activo");

-- JERSEY SEXADO
insert into toro values("511EJ01179","VICEROY",4,"Activo");
insert into toro values("511EJ01329","WISHBONE",4,"Activo");
insert into toro values("511EJ01340","MCGAHEE",4,"Activo");
insert into toro values("511EJ01342","CABRERA",4,"Activo");
insert into toro values("511EJ01345","GIANNIS",4,"Activo");
insert into toro values("511EJ01379","ZIDANE",4,"Activo");
describe subsidiaria;
-- CLIENTES
insert into subsidiaria values(default,"Sello Rojo","Fatima #329");
select * from subsidiaria;
describe clientes;
DESCRIBE CLIENTES;
alter table pedidos drop foreign key pedidos_ibfk_1;
alter table clientes change id_cliente id_cliente int not null auto_increment;
alter table pedidos add foreign key(id_cliente) references clientes(id_cliente);
insert into clientes values(default,"MARQUEZ PADILLA JOSE DE JESUS","","","");
insert into clientes values(default,"ALCALA GONZALEZ JOSE","","","");
insert into clientes values(default,"DELGADO ANDRADE JOSE DE JESUS","","","");
insert into clientes values(default,"AGROPECUARIO LA CUESTA, S.P.R. DE R.L.","","","");
insert into clientes values(default,"GUTIERREZ LOZANO ABELARDO","","","");
insert into clientes values(default,"MARQUEZ PADILLA MIGUEL","","","");
insert into clientes values(default,"MUÑOZ DE ANDA RICARDO","","","");
insert into clientes values(default,"ORORZCO ALCALA FRANCISCO JAVIER","","","");
insert into clientes values(default,"PRODUCTORES DE ATOYONALCO S.P.R. DE R.L.","","","");
insert into clientes values(default,"AGROPECUARIA EL GIGANTE S.A. DE C.V.","","","");
insert into clientes values(default,"GONZALEZ GUTIERREZ FERNANDO","","","");
insert into clientes values(default,"GONZALEZ GUTIERREZ JORGE","","","");
insert into clientes values(default,"GONZALEZ GUTIERREZ JOSE DE JESUS","","","");
insert into clientes values(default,"ALVAREZ GONZALEZ JESUS ALEJANDRO","","","");
insert into clientes values(default,"HORNEDO MARIN ALEJANDRINA","","","");
insert into clientes values(default,"HERNANDEZ MUÑOZ LEOPOLDO","","","");
insert into clientes values(default,"PADILLA PADILLA JOSE DE JESUS","","","");
insert into clientes values(default,"DIAZ QUEZADA J. RAMIRO","","","");
insert into clientes values(default,"MARQUEZ PADILLA SALVADOR","","","");
insert into clientes values(default,"GONZALEZ CERDA EZEQUIEL","","","");
insert into clientes values(default,"GRUPO CIENEGUITA, S.P.R. DE R.L.","","","");
insert into clientes values(default,"PRODUCTOS PECUARIOS SAN EUGENIO, SPR DE RL","","","");
insert into clientes values(default,"PEREZ GUTIERREZ DAVID","","","");
insert into clientes values(default,"AGRICOLA GANADERA LA ESTANCIA","","","");
insert into clientes values(default,"AGROPECUARIA POTRERO DEL REFUGIO, S.P.R. DE R.L.","","","");
insert into clientes values(default,"AVILA SANTOYO SALVADOR","","","");
insert into clientes values(default,"AGRICOLA Y GANADERA DEL BAJI, S.P.R. DE R.L.","","","");
insert into clientes values(default,"AGROPERUARIA LOS PIONEROS S.P.R. DE R.L.","","","");
insert into clientes values(default,"CUMMINGS DE ALBA EMET VICTOR","","","");
insert into clientes values(default,"FRANCO VERDIN RAMIRO","","","");
insert into clientes values(default,"EL MIRADOR DE AGUASCALIENTES, S.P.R. DE R.L.","","","");
insert into clientes values(default,"ESPARZA RUELAS MIGUEL","","","");
insert into clientes values(default,"GARCIA GUTIERREZ MANUEL","","","");
insert into clientes values(default,"GOMEZ GONZALEZ RAMON","","","");
insert into clientes values(default,"MARTINEZ MARTINEZ RAUL","","","");
insert into clientes values(default,"MUÑOZ DE ALBA INDALECIO","","","");
insert into clientes values(default,"MORALES ALARCON ABRAHAM","","","");


insert into clientes values(default,"MORENO VELAZQUEZ CARLOS","","","");
insert into clientes values(default,"MUÑOZ MARQUEZ BALTAZAR","","","");
insert into clientes values(default,"ORNELAS GUTIERREZ JOSE GUADALUPE","","","");
insert into clientes values(default,"PADILLA DIAZ GERARDO ERNESTO","","","");
insert into clientes values(default,"PRODUCTORA AGROPECUARIA ASUNCION S.P.R. DE R.L.","","","");
insert into clientes values(default,"SALADO GONZALEZ LORENZO","","","");
insert into clientes values(default,"SILVA ARMAS JAIME","","","");
insert into clientes values(default,"TORRES MARTINEZ JUAN GABRIEL","","","");
insert into clientes values(default,"TLACUACHE, S.A. DE C.V.","","","");
insert into clientes values(default,"UNION AGROPECUARIA DE AGUASCALIENTES, S.A. DE C.V.","","","");
insert into clientes values(default,"RAMIREZ ESCOTO JESUS","","","");
insert into clientes values(default,"RANCHO LOGO Y ASOCIADOS, S.P.R. DE R.L.","","","");
insert into clientes values(default,"VAQUILLOS, S.P.R. DE R.L.","","","");
insert into clientes values(default,"RAMIREZ JIMENEZ JOSE DE JESUS","","","");
insert into clientes values(default,"RIOS ROMO ERASMO","","","");
insert into clientes values(default,"GANADERIA MEDIA LUNA, S. DE P.R. DE R.L.","","","");
insert into clientes values(default,"PRODUCTORA AGROPECUARIA CALIFORNIA, S.P.R. DE R.","","","");
insert into clientes values(default,"SUTTI OSORIO PREDO MARIO","","","");
insert into clientes values(default,"GONZALEZ REYNOSO CARLOS","","","");
insert into clientes values(default,"GONZALEZ ULLOA JAIME","","","");
insert into clientes values(default,"ALVAREZ ROMO JUAN FRANCIS","","","");
insert into clientes values(default,"ORORZCO JIMENEZ FERNANDO","","","");
insert into clientes values(default,"DE LA TORRE DE LA TORRE LUIS","","","");
insert into clientes values(default,"JIMENEZ JIMENEZ CELESTINO","","","");
insert into clientes values(default,"GONZALEZ ENQUIREZ JOSE","","","");
insert into clientes values(default,"PEDROZA GUZMAN JAVIER DE LA LUZ","","","");
insert into clientes values(default,"AGROPECUARIA EL TEPETATILLO, S.A. DE C.V.","","","");
insert into clientes values(default,"HERNANDEZ VILLALPANDO GUADALUPE","","","");
insert into clientes values(default,"SUTTI MARIN ERILIO","","","");
insert into clientes values(default,"SUTTI MARIN MARIO","","","");
insert into clientes values(default,"SUTTI MARIN PEDRO","","","");
insert into clientes values(default,"PONCE HERNANDEZ JORGE EDUARDO","","","");
insert into clientes values(default,"MARQUEZ MARQUEZ JOSE DE JESUS","","","");
insert into clientes values(default,"DIAZ ESPARZA OFELIA","","","");
insert into clientes values(default,"RANCHO FAPERGO, S.P.R. DE R.L. DE C.V.","","","");
insert into clientes values(default,"SANTOSCOY PADILLA GENARO","","","");
insert into clientes values(default,"UNION DE PRODUCTORES DE LECHE DE TEPATITLAN, S.","","","");

SELECT COUNT(*) FROM CLIENTES;

insert into clientes values(default,"FRANCO JAUREGUI CARLOS","","","");
insert into clientes values(default,"REYNOSO REYNOSO EMANUEL","","","");
insert into clientes values(default,"PEDORZA HERNANDEZ ARTURO","","","");
insert into clientes values(default,"GOMEZ CASTELLANOS JOSE DE JESUS","","","");
insert into clientes values(default,"MARTIN SERRANO MIGUEL","","","");
insert into clientes values(default,"GRANJA TONATIZIN, S.A. DE C.V.","","","");
insert into clientes values(default,"GUILLEN TUEYES ELEUTERIO","","","");
insert into clientes values(default,"GONEZ LOZA J. ROSARIO","","","");
insert into clientes values(default,"VITAL SILVA GERARDO","","","");
insert into clientes values(default,"ESCALERA PEREZ ALEJO","","","");
insert into clientes values(default,"ESCALERA PEREZ JOSE LUIS","","","");
insert into clientes values(default,"PONCE HERNANDEZ OSCAR","","","");
insert into clientes values(default,"MARTINEZ TOPETE ANA SOFIA","","","");
insert into clientes values(default,"RESENDIZ MACIAS MARIA AMPARO","","","");
insert into clientes values(default,"GONZALEZ VILLASEÑOR CARLOS ERNESTO","","","");
insert into clientes values(default,"BRIZUELA LOZANO J. GUADALUPE","","","");
insert into clientes values(default,"AGROINDUSTRIAL PLAN DE GARABATOS, S.C. DE R.L.","","","");
insert into clientes values(default,"MARTIN CASTELLANOS JOSE LUIS ","","","");
insert into clientes values(default,"BARRAGAN MARTINEZ ALFREDO","","","");
insert into clientes values(default,"RODRIGUEZ SANCHEZ JUNIOR ABELARDO","","","");
insert into clientes values(default,"AGROLACTEOS EL SOCORRO, S.P.R. DE R.L.","","","");
insert into clientes values(default,"NUTRICION Y REPRODUCCION DE LOS ALTOS, S.A. DE C.V.","","","");
insert into clientes values(default,"GRUPO SAN JACINTO, S.A. DE C.V.","","","");
insert into clientes values(default,"GONZALEZ GUTIERREZ ANGEL","","","");
insert into clientes values(default,"ROMO MUÑOZ MANUEL","","","");
insert into clientes values(default,"OÑATE AGUIRRE LUIS FRANCISCO","","","");
insert into clientes values(default,"ESTABLO BETANIA S. DE P.R. DE R.L.","","","");
insert into clientes values(default,"AGROPECUARIA LA CUESTA, S.P.R. DE R.L.","","","");
insert into clientes values(default,"PRODUCTOS AGROPECUARIOS DVG, S.A. DE C.V.","","","");
insert into clientes values(default,"GONZALEZ JIMENEZ ENRIQUE","","","");
insert into clientes values(default,"GONZALEZ GUTIERREZ ANTONIO","","","");
insert into clientes values(default,"CAMPOS HURTADO ROBERTO FLORENTINO","","","");
insert into clientes values(default,"GONZALEZ PEREZ BENJAMIN LUIS J","","","");
insert into clientes values(default,"GOMEZ SANDOVAL ABEL","","","");
insert into clientes values(default,"PADILLA GONZALEZ ISMAEL","","","");
insert into clientes values(default,"SIGAM ALIMENTOS LACTEOS, S.A. DE C.V.","","","");
insert into clientes values(default,"PRODUCTORES DE LECHE SAN CARLOS, S.C. DE R.L.D.","","","");
SELECT * FROM CLIENTES WHERE NOMBRE LIKE"%AGROLACTEOS EL SOCORRO%";
ALTER TABLE CLIENTES CHANGE COLUMN NOMBRE NOMBRE VARCHAR(80);
SELECT COUNT(*) FROM CLIENTES;
insert into clientes values(default,"GUZMAN ROMO GERARDO","","","");
insert into clientes values(default,"RANCHO LA CHIRIPA, S. DE P.R. DE R.L.","","","");
insert into clientes values(default,"ALTA GENETICS DE MEXICO, S. DE R.L. DE C.V.","","","");
insert into clientes values(default,"MUÑOZ RAMIREZ DANIEL","","","");
insert into clientes values(default,"GRUPO SOLIDARIO DE R.S.E. ILIMITADA","","","");
insert into clientes values(default,"DELGADO ANDRADE JOSE DE JESUS","","","");
insert into clientes values(default," ALCALA ROMO PAOLA LETICIA","","","");
insert into clientes values(default,"MONDRAGON BARRIOS EDGAR","","","");
insert into clientes values(default,"ALVAREZ RODIGUEZ HERMANOS, S.A. DE C.V.","","","");
insert into clientes values(default,"GUERRERO MEDINA ALBERTO","","","");
insert into clientes values(default,"DISTRIBUIDORA DE INSUMOS PECUARIOS EL RODEO S.","","","");

describe subsidiaria;
SELECT * FROM PRECIOS;
insert into precios values(1,"011HO00586",12.00,4.2,3.0,4.8);
insert into precios values(1,"011HO11272",12,4.2,3,4.8);
insert into precios values(1,"011HO11379",17.5,6.125,4.375,7);
insert into precios values(1,"011HO11478",22,7.7,5.5,8.8);
insert into precios values(1,"011HO11499",17,5.95,4.25,6.8);
insert into precios values(1,"011HO11690",10,3.5,2.5,4);
-- PRECIOS
DESCRIBE TORO;
DESCRIBE PRECIOS;
ALTER TABLE PRECIOS ADD PRIMARY KEY(ID_EMPRESA,ID_TORO);
SELECT * FROM TORO WHERE NOMBRE LIKE "%JOEBOT%";-- ID="011HO11715";
-- insert into precios values(1,"011HO11715",14,4.9,3.5,5.6);
insert into precios values(1,"011HO11716",14,4.9,3.5,5.6);
insert into precios values(1,"011HO11725",17,5.95,4.25,6.8);
insert into precios values(1,"011HO11737",12,4.2,3,4.8);
insert into precios values(1,"011HO11740",12,4.2,3,4.8);
insert into precios values(1,"011HO11749",13.5,4.725,3.375,5.4);
insert into precios values(1,"011HO11750",15,5.25,3.75,6);
insert into precios values(1,"011HO11758",20,7,5,8);
-- 
SELECT * FROM TORO WHERE ID="011HO11784";
insert into precios values(1,"011HO11767",15,5.25,3.75,6);
insert into precios values(1,"011HO11784",12,4.2,3,4.8);
insert into precios values(1,"011HO11780",17,5.95,4.25,6.8);
insert into precios values(1,"011HO11786",13,4.55,325,5.2);
insert into precios values(1,"011HO11803",13,4.55,3.25,5.2);
insert into precios values(1,"011HO11823",15,5.25,3.75,6);
insert into precios values(1,"011HO11826",13,4.55,3.25,5.2);
insert into precios values(1,"011HO11827",14,4.9,3.5,5.6);
insert into precios values(1,"011HO11855",12,4.2,3,4.8);
insert into precios values(1,"011HO11866",13,4.55,3.25,5.2);
insert into precios values(1,"011HO11884",15.5,5.425,3.875,6.2);
insert into precios values(1,"011HO11887",12,4.2,3,4.8);
insert into precios values(1,"011HO11892",14,4.9,3.5,5.6);
--
insert into precios values(1,"011HO11911",17,5.95,4.25,6.8);
insert into precios values(1,"011HO11963",17,5.95,4.25,6.8);
insert into precios values(1,"011HO11970",13,4.55,3.25,5.2);
insert into precios values(1,"011HO11928",15,5.25,3.75,6);
SELECT * FROM TORO WHERE ID="011HO11928";
insert into precios values(1,"011HO11987",14,4.9,3.5,5.6);
insert into precios values(1,"011HO11993",14,4.9,3.5,5.6);
insert into precios values(1,"011HO12021",17,5.950,4.25,6.8);
insert into precios values(1,"011HO12024",15,5.25,3.75,6);
insert into precios values(1,"011HO12029",15,5.25,3.75,6);
insert into precios values(1,"011HO12050",15.5,5.425,3.875,6.2);
insert into precios values(1,"011HO12052",14,4.9,3.5,5.6);
insert into precios values(1,"011HO12075",14,4.9,3.5,5.6);
insert into precios values(1,"011HO12082",15,5.25,3.75,6);
insert into precios values(1,"011HO12083",17,5.950,4.25,6.8);
insert into precios values(1,"011HO12093",17,5.95,4.25,6.8);
insert into precios values(1,"011HO12094",14,4.9,3.5,5.6);
insert into precios values(1,"011HO12109",15,5.25,3.75,6);
insert into precios values(1,"011HO12115",20,7,5,8);
insert into precios values(1,"011HO12122",20,7,5,8);
insert into precios values(1,"011HO12123",20,7,5,8);
insert into precios values(1,"011HO12124",20,7,5,8);
insert into precios values(1,"011HO12128",15,5.25,3.75,6);
insert into precios values(1,"011HO12148",19,6.65,4.75,7.6);
insert into precios values(1,"011HO12155",20,7,5,8);
insert into precios values(1,"011HO12165",20,7,5,8);
insert into precios values(1,"011HO12168",23,8.05,5.75,9.2);
insert into precios values(1,"011HO12169",23,8.05,5.75,9.2);
insert into precios values(1,"011HO12174",28,9.8,7,11.2);
insert into precios values(1,"011HO12194",25,8.75,6.25,10);
insert into precios values(1,"011HO12197",13,4.55,3.25,5.2);
insert into precios values(1,"011HO12204",15.5,5.425,3.875,6.2);
insert into precios values(1,"011HO12203",17,5.95,4.25,6.8);
insert into precios values(1,"011HO12206",22,7.7,5.5,8.8);
insert into precios values(1,"011HO12208",15.5,5.425,3.875,6.2);
insert into precios values(1,"011HO12228",17,5.95,4.25,6.8);
insert into precios values(1,"011HO12235",17,5.95,4.25,6.8);
-- 
SELECT COUNT(*) FROM PRECIOS;
insert into precios values(1,"011HO12237",22,7.7,5.5,8.8);
insert into precios values(1,"011HO12242",15,5.25,3.75,6);
insert into precios values(1,"011HO12225",22,7.7,5.5,8.8);
insert into precios values(1,"011HO12261",28,9.8,7,11.2);
insert into precios values(1,"011HO12263",19,6.65,4.75,7.6);
insert into precios values(1,"011HO12275",22,7.7,5.5,8.8);
insert into precios values(1,"011HO12278",16,5.6,4,6.4);
insert into precios values(1,"011HO12282",20,7,5,8);
insert into precios values(1,"011HO12287",23,8.05,5.75,9.2);
insert into precios values(1,"011HO12293",28,9.8,7,11.2);
insert into precios values(1,"011HO12308",22,7.7,5.5,8.8);
insert into precios values(1,"011HO12311",20,7,5,8);
insert into precios values(1,"011HO12314",19,6.65,4.75,7.6);
insert into precios values(1,"011HO12317",28,9.8,7,11.2);
insert into precios values(1,"011HO12326",28,9.8,7,11.2);
insert into precios values(1,"011HO12328",25,8.75,6.25,10);
-- 
insert into precios values(1,"011HO12329",22,7.7,5.5,8.8);
insert into precios values(1,"011HO12333",22,7.7,5.5,8.8);
insert into precios values(1,"011HO12334",25,8.75,6.25,10);
insert into precios values(1,"011HO12342",28,9.8,7,11.2);
-- insert into precios values(1,"511HO11283",33,11.55,8.25,13.2);
insert into precios values(1,"511HO11716",33,11.55,8.25,13.2);
-- insert into precios values(1,"511HO11740",33,11.55,8.25,13.2);
insert into precios values(1,"511HO11750",33,11.55,8.25,13.2);
insert into precios values(1,"511HO11788",35,12.25,8.75,14);
insert into precios values(1,"511HO11813",38,13.3,9.5,15.2);
insert into precios values(1,"511HO11826",38,13.3,9.5,15.2);
insert into precios values(1,"511HO11888",38,13.3,9.5,15.2);
insert into precios values(1,"511HO11957",38,13.3,9.5,15.2);
insert into precios values(1,"511HO12000",37.5,13.125,9.375,15);
-- insert into precios values(1,"511HO12023",35,12.25,8.75,14);
insert into precios values(1,"511HO12050",35,12.25,8.75,14);
insert into precios values(1,"511HO12093",38,13.3,9.5,15.2);
-- insert into precios values(1,"511HO12165",40,14,10,16);
insert into precios values(1,"511HO12177",38,13.3,9.5,15.2);
insert into precios values(1,"511HO12226",38,13.3,9.5,15.2);
insert into precios values(1,"511HO12264",38,13.3,9.5,15.2);
insert into precios values(1,"511HO12278",38,13.3,9.5,15.2);
SELECT count(*) FROM PRECIOS;
-- JERSEY
insert into precios values(1,"011JE01179",20,7,5,8);
insert into precios values(1,"011JE01308",15.5,5.425,3.875,6.2);
insert into precios values(1,"011JE01326",17,5.95,4.25,6.8);
insert into precios values(1,"011JE01329",16,5.6,4,6.4);
select * FROM RAZA;
DESCRIBE TORO;
SELECT * FROM TORO WHERE ID_RAZA =3;
insert into precios values(1,"011JE01338",16,5.6,4,6.4);
Insert into precios values(1,"011JE01339",17,5.95,4.25,6.8);
insert into precios values(1,"011JE01348",20,7,5,8);
insert into precios values(1,"011JE01366",20,7,5,8);
insert into precios values(1,"011JE01369",22,7.7,5.5,8.8);
SELECT * FROM TORO WHERE ID LIKE"%01366%";
SELECT * FROM TORO WHERE ID_RAZA=4;
SELECT * FROM PRECIOS;
insert into precios values(1,"511JE01179",40.5,14.175,10.125,16.2);
insert into precios values(1,"511JE01329",39,13.65,9.75,15.6);
insert into precios values(1,"511JE01340",39,13.65,9.75,15.6);
insert into precios values(1,"511JE01342",39,13.65,9.75,15.6);
insert into precios values(1,"511JE01345",39,13.65,9.75,15.6);
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123permisos';
select * from users;
describe pv_alta;
select version();
select * from permisos;
describe permisos;
alter table permisos
add column Nombre varchar(10);
create database pvt_alta2;
select * from permisos;
use pv_alta;
describe pedidos;
describe termo;
describe canastilla;
alter table canastilla drop foreign key canastilla_ibfk_1;
alter table sacado_de drop foreign key sacado_de_ibfk_2;
alter table termo change id_termo id_termo int not null auto_increment;
alter table canastilla add foreign key (id_termo) references termo(id_termo);
alter table sacado_de add foreign key (id_termo) references termo(id_termo);
alter table pedidos drop foreign key pedidos_ibfk_3;
alter table tipo_cambio change id id int not null auto_increment;
alter table pedidos add foreign key (id_tipo_c) references tipo_cambio(id);
-- llenado la tabla termo
insert into termo(id_termo,numero_termo) values(null,1);
-- llenando la tabla de canastilla
insert into canastilla(id_canastilla,id_termo,num_canasta)values(null,1,1);
insert into canastilla(id_canastilla,id_termo,num_canasta)values(null,1,2);
insert into canastilla(id_canastilla,id_termo,num_canasta)values(null,1,3);
insert into canastilla(id_canastilla,id_termo,num_canasta)values(null,1,4);
insert into canastilla(id_canastilla,id_termo,num_canasta)values(null,1,5);
insert into canastilla(id_canastilla,id_termo,num_canasta)values(null,1,6);
describe canastilla;
describe semen;
select * from canastilla;
-- ############# T1
-- canastilla 1 
insert into semen(id_canastilla,id_toro,unidades)values(1,(select id from toro where nombre="concord"),860);
-- canastilla 2
insert into semen(id_canastilla,id_toro,unidades)values(2,(select id from toro where nombre="ketuchel"),450);
insert into semen(id_canastilla,id_toro,unidades)values(2,(select id from toro where nombre ="zigzag" and id_raza=2),150);
insert into semen(id_canastilla,id_toro,unidades)values(2,(select id from toro where nombre="ovacao"),200);
-- canastilla 3
insert into semen(id_canastilla,id_toro,unidades)values(3,(select id from toro where nombre="gopro"),440);
insert into semen(id_canastilla,id_toro,unidades)values(3,(select id from toro where nombre ="abba" and id_raza=2),395);
-- canastilla 4
insert into semen(id_canastilla,id_toro,unidades)values(4,(select id from toro where nombre ="lancing" and id_raza=2),180);
insert into semen(id_canastilla,id_toro,unidades)values(4,(select id from toro where nombre ="pineta"),350);
-- canastilla 5
insert into semen(id_canastilla,id_toro,unidades)values(5,(select id from toro where nombre ="sprite"),1048);
-- canastilla 6
insert into semen(id_canastilla,id_toro,unidades)values(6,(select id from toro where nombre ="swag"),30);
insert into semen(id_canastilla,id_toro,unidades)values(6,(select id from toro where nombre ="explosion"),340);
insert into semen(id_canastilla,id_toro,unidades)values(6,(select id from toro where nombre ="toohot" and id_raza=2),30);
-- ############# T2
-- canastilla 1
insert into semen(id_canastilla,id_toro,unidades)values(7,(select id from toro where nombre="concord"),760);
insert into semen(id_canastilla,id_toro,unidades)values(7,(select id from toro where nombre="explosion"),660);
insert into semen(id_canastilla,id_toro,unidades)values(7,(select id from toro where nombre="swag"),560);
-- canastilla 2
insert into semen(id_canastilla,id_toro,unidades)values(8,(select id from toro where nombre="ketuchel"),450);

select * from termo;
select * from canastilla;
select id from toro where nombre ="toohot";
select id from toro where nombre ="lancing" and id_raza=2;
select * from raza;
select * from semen;
select * from termo;
-- modificar el autoincrement de una tabla
alter table canastilla auto_increment=8;
-- inventarios ordenados por toro, termo y canastilla
create or replace view inventario as
select t.id as Arete, t.nombre as Nombre , tr.id_termo as Termo, c.num_canasta Canastilla, s.unidades Unidades
from toro t
inner join semen s on t.id= s.id_toro 
inner join canastilla c on s.id_canastilla=c.id_canastilla
inner join termo tr on tr.id_termo=c.id_termo
order by  t.id asc,tr.id_termo asc,c.id_canastilla asc; 
select * from inventario;

describe clientes;
alter table clientes change estatus estatus varchar(10);

-- lista de precios de sello rojo
create or replace view Lista_precios_selloR as
select t.id as Arete, t.nombre as Toro, r.nombre as Raza, p.precio_publico as Precio_Publico, p.desc_alta as Descuento, p.apoyo as Apoyo,
p.precio_productor as Precio_Productor
from toro t
inner join raza r on t.id_raza= r.id
inner join precios p on t.id=p.id_toro 
where p.id_empresa=1;
-- se planea hacer una lista para cada empresa
-- lista de toros
create or replace view Toros as
select t.id as Arete, t.nombre as Nombre, r.nombre as Raza, t.estatus as Estatus
from toro t
inner join raza r on t.id_raza= r.id;
-- lista de usuarios
create or replace view info_usuarios as
select u.nombre as Nombre, u.usuario as Usuario,p.Nombre as Permiso, p.descripcion as Descripcion
from usuario u
inner join permisos p on u.id_permiso=p.id;

describe clientes; -- 1 activo, 0 inactivo