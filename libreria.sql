create table cliente (
 id int primary key identity(1,1),
 nombre varchar(50) not null,
 apellido varchar(50) not null,
 correo varchar(50) not null,
 contrasena varchar(50) not null, 
 created_at datetime, 
 updated_at datetime
);
create table editorial(
id int primary key identity(1,1) ,
nombre varchar(50) not null,
created_at datetime,
updated_at datetime
);
create table libros(
id int primary key identity(1,1),
titulo varchar(100) not null,
yearp int not null,
created_at datetime,
updated_at datetime,
editorial_id int not null,
foreign key(editorial_id) references editorial(id)
);
create table autor(
id int primary key identity(1,1),
nombre varchar(50) not null,
apellido varchar(50) not null,
created_at datetime,
updated_at datetime
);

create table autores_libros(
id int primary key identity(1,1),
created_at datetime,
updated_at datetime,
libros_id int not null,
autor_id int not null,
foreign key (libros_id) references libros(id),
foreign key (autor_id) references autor(id)
);

create table review(
id int primary key identity(1,1),
cuerpo text not null,
created_at datetime,
updated_at datetime,
cliente_id int,
libros_id int,
foreign key (cliente_id) references cliente(id),
foreign key (libros_id) references libros (id)
);