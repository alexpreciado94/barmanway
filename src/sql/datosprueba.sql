insert into usuario (emailUsuario, passwordUsuario, tipoUsuario) values
  ('fiambre@fiambre.com', 'llevateesta yadormirconloslunis', 'a'),
  ('caca@caca.org', 'cakitaNumber1', 'g'),
  ('raro@raro.es', 'o.O', 'g');

insert into negocio (nombreNegocio, descripcionNegocio, direccionNegocio, telefonoNegocio, emailNegocio, urlFacebookNegocio, urlInstagramNegocio, urlYouTubeNegocio, telefonoWhatsAppNegocio) values
  ('charcuteria', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'C/ La Vaina Nº1', '666999333', 'negocioslaruina@laruinatearruina.com', 'https://www.facebook.com/alexpreciadodesign/', 'https://www.instagram.com/alexpreciado94/', 'https://www.youtube.com/channel/UCLqYoe5nT_1xuveNEVDKr1A/featured', '666777444'),
  ('llorería', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'C/ La Vaina Nº1', '666999333', 'negocioslaruina@laruinatearruina.com', 'https://www.facebook.com/alexpreciadodesign/', 'https://www.instagram.com/alexpreciado94/', 'https://www.youtube.com/channel/UCLqYoe5nT_1xuveNEVDKr1A/featured', '666777444');

insert into categoria (idNegocio, nombreCategoria) values
  (1, 'Jamon de York'),
  (1, 'Choped 1Kg'),
  (1, 'Mortadela'),
  (1, 'Lomo'),
  (1, 'AmorEnBarra'),
  (2, 'Pena'),
  (2, 'Ira'),
  (2, 'Morcón');

insert into producto (idCategoria, nombreProducto, descripcionProducto, precioProducto) values
  (1, 'delBueno', 'el que sabe bien', 22.50),
  (1, 'delCaro', 'el que te gusta más', 30.50),
  (1, 'delMalo', 'el que te vende el chino', 12.5),
  (1, 'delFeo', 'el que te resulta familiar', 015.00),
  (1, 'delBarato', 'son ilusiones', 1),
  (1, 'delGordo', 'si te lo comes por la n0che te repite a la mañana', 13.00),
  (2, 'delBueno', 'el que sabe bien', 22.50),
  (2, 'delCaro', 'el que te gusta más', 30.50),
  (2, 'delMalo', 'el que te vende el chino', 12.5),
  (2, 'delFeo', 'el que te resulta familiar', 015.00),
  (2, 'delBarato', 'son ilusiones', 1),
  (2, 'delGordo', 'si te lo comes por la n0che te repite a la mañana', 13.00);
