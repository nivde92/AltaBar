CREATE TABLE  ALTB_RESERVA (
ID_RESERVA VARCHAR (50) NOT NULL,
ID_CLIENTE VARCHAR (50) NOT NULL,
ID_PAQUETE VARCHAR (50) NOT NULL,
ID_MESA VARCHAR (50) NOT NULL,
DE_RESERVA VARCHAR (500) NOT NULL,
CM_RESERVA VARCHAR (2000) NOT NULL,
FH_CARGA DATE NOT NULL) ;


CREATE TABLE  ALTB_PAQUETE (
ID_PAQUETE VARCHAR (50) NOT NULL,
DES_PAQUETE VARCHAR (500) NOT NULL,
CM_PAQUETE VARCHAR (2000) NOT NULL,
LINK_IMG  VARCHAR (2000) NOT NULL,
PRECIO FLOAT); 


CREATE TABLE  ALTB_MESAS(
ID_MESA VARCHAR (50) NOT NULL,
DESC_MESA VARCHAR(500) NOT NULL,
LINK_IMG VARCHAR(2000) NOT NULL
);

CREATE TABLE  ALTB_MESAS_AREA(
ID_MESA VARCHAR (50) NOT NULL,
ID_AREA VARCHAR (50) NOT NULL
);


CREATE TABLE  ALTB_AREA(
ID_AREA VARCHAR (50) NOT NULL,
DESC_AREA VARCHAR(500) NOT NULL,
LINK_IMG VARCHAR(2000) NOT NULL);

CREATE TABLE  ALTB_FACTURACION (
ID_FACT VARCHAR (50) NOT NULL,
ID_RESERVA VARCHAR (50) NOT NULL,
TOTAL_FACT  FLOAT,
FH_CARGA DATE NOT NULL);


CREATE TABLE  ALTB_RESERVA_CLIENTES (
ID_RESERVA VARCHAR (50) NOT NULL,
ID_CLIENTE VARCHAR (50) NOT NULL,
ESTADO_FACT VARCHAR (1) NOT NULL,
FH_CARGA DATE NOT NULL) ;

CREATE TABLE ALTB_CLIENTES (
ID_CLIENTE VARCHAR (50) NOT NULL,
NOMBRE VARCHAR (75) NOT NULL,
APELLIDO VARCHAR (75) NOT NULL,
E_MAIL VARCHAR (50) NOT NULL,
CELULAR VARCHAR (8) NOT NULL,
SEXO VARCHAR (1) NOT NULL,
FECHA_NACIMIENTO DATE NOT NULL,
FH_REGISTRO DATE NOT NULL) ;


CREATE TABLE ALTB_HSY (
IU4789 VARCHAR (200) NOT NULL,
UU7879 VARCHAR(500) NOT NULL,
CU5479 VARCHAR (500) NOT NULL);


CREATE UNIQUE INDEX PK_ALTB_RESERVA ON  ALTB_RESERVA(ID_RESERVA) ;
CREATE UNIQUE INDEX PK_ALTB_PAQUETE ON  ALTB_PAQUETE(ID_PAQUETE) ;
CREATE UNIQUE INDEX PK_ALTB_MESAS ON  ALTB_MESAS(ID_MESA) ;
CREATE UNIQUE INDEX PK_ALTB_AREA ON  ALTB_AREA(ID_AREA) ;
CREATE UNIQUE INDEX PK_ALTB_MESA_AREA ON  ALTB_MESAS_AREA(ID_AREA, ID_MESA) ;
CREATE UNIQUE INDEX PK_ALTB_FATURACION ON  ALTB_FACTURACION(ID_FACT, ID_RESERVA) ;
CREATE UNIQUE INDEX PK_ALTB_CLIENTES ON  ALTB_CLIENTES(ID_CLIENTE) ;
CREATE UNIQUE INDEX PK_ALTB_RESERVA_CLIENTES ON  ALTB_RESERVA_CLIENTES(ID_RESERVA,ID_CLIENTE) ;
CREATE UNIQUE INDEX PK_ALTB_HSY      ON  ALTB_HSY(IU4789) ;

ALTER TABLE ALTB_RESERVA ADD CONSTRAINT          PK_ALTB_RESERVA       PRIMARY KEY (ID_RESERVA) ;
ALTER TABLE ALTB_PAQUETE ADD CONSTRAINT          PK_ALTB_PAQUETE       PRIMARY KEY (ID_PAQUETE) ;
ALTER TABLE ALTB_MESAS ADD CONSTRAINT            PK_ALTB_MESAS         PRIMARY KEY (ID_MESA) ;
ALTER TABLE ALTB_AREA ADD CONSTRAINT             PK_ALTB_AREA          PRIMARY KEY (ID_AREA) ;
ALTER TABLE ALTB_MESAS_AREA ADD CONSTRAINT       PK_ALTB_MESA_AREA     PRIMARY KEY (ID_AREA, ID_MESA) ;
ALTER TABLE ALTB_FACTURACION ADD CONSTRAINT      PK_ALTB_FATURACION    PRIMARY KEY (ID_FACT, ID_RESERVA) ;
ALTER TABLE ALTB_CLIENTES ADD CONSTRAINT         PK_ALTB_CLIENTES      PRIMARY KEY (ID_CLIENTE) ;
ALTER TABLE ALTB_RESERVA_CLIENTES ADD CONSTRAINT PK_ALTB_RESERVA_CLIENTES PRIMARY KEY (ID_RESERVA,ID_CLIENTE) ;
ALTER TABLE ALTB_HSY ADD CONSTRAINT              PK_ALTB_HSY           PRIMARY KEY  (IU4789) ;




