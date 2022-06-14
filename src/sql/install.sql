create database barmanway;
use barmanway;

create table usuario(
  idUsuario tinyint unsigned primary key auto_increment,
  emailUsuario varchar(255) not null unique,
  passwordUsuario varchar(255) not null,
  tipoUsuario char(1) not null
);

create table negocio(
  idNegocio tinyint unsigned primary key auto_increment,
  nombreNegocio varchar(255) not null,
  colorNegocio char(6) null default '222222',
  iconoNegocio varchar(255) null,
  logoNegocio varchar(255) not null default 'logoBar.png',
  imgInicioNegocio varchar(255) not null default 'imgPrueba.jpg',
  logoInicioNegocio varchar(255) null default 'logoBar.png',
  descripcionNegocio text not null,
  imgDescripcionNegocio varchar(255) not null default 'imgPrueba.jpg',
  imgParallaxNegocio varchar(255) not null default 'imgPrueba.jpg',
  direccionNegocio varchar(255) null,
  telefonoNegocio char(9) null,
  emailNegocio varchar(255) null,
  urlFacebookNegocio varchar(255) null,
  urlInstagramNegocio varchar(255) null,
  urlYouTubeNegocio varchar(255) null,
  telefonoWhatsAppNegocio varchar(255) null
);

create table usuario_negocio(
  idUsuario tinyint unsigned not null,
  idNegocio tinyint unsigned not null,
  constraint pk_usuarioNegocio primary key (idUsuario, idNegocio),
  constraint fk_idUsuarioNegocio foreign key (idUsuario) references usuario(idUsuario) on update cascade on delete cascade,
  constraint fk_idNegocioUsuario foreign key (idNegocio) references negocio(idNegocio) on update cascade on delete cascade
);

create table categoria(
  idNegocio tinyint unsigned not null,
  idCategoria smallint unsigned primary key auto_increment,
  nombreCategoria varchar(255) not null,
  incrementoBarraMesa decimal(5,2) not null default 0,
  constraint fk_idNegocio foreign key (idNegocio) references negocio(idNegocio) on update cascade on delete cascade
);

create table producto(
  idCategoria smallint unsigned not null,
  idProducto smallint unsigned primary key auto_increment,
  nombreProducto varchar(255) not null,
  descripcionProducto varchar(255) null,
  precioProducto decimal(5,2) not null,
  constraint fk_idCategoria foreign key (idCategoria) references categoria(idCategoria) on update cascade on delete cascade
);

create table alergeno(
  idAlergeno tinyint unsigned primary key auto_increment,
  nombreAlergeno varchar(255) not null,
  imgAlergeno varchar(255) not null
);

create table producto_alergeno(
  idProducto smallint unsigned not null,
  idAlergeno tinyint unsigned not null,
  constraint pk_productoAlergeno primary key (idProducto, idAlergeno),
  constraint fk_idProductoAlergeno foreign key (idProducto) references producto(idProducto) on update cascade on delete cascade,
  constraint fk_idAlergenoProducto foreign key (idAlergeno) references alergeno(idAlergeno) on update cascade on delete cascade
);
