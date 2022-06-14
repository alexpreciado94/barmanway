insert into negocio(nombreNegocio, colorNegocio, iconoNegocio, logoNegocio, imgInicioNegocio, logoInicioNegocio, descripcionNegocio, imgDescripcionNegocio, imgParallaxNegocio, direccionNegocio, telefonoNegocio, emailNegocio, urlFacebookNegocio, urlInstagramNegocio, urlYouTubeNegocio, telefonoWhatsAppNegocio) values
  ('Bodega San José', 'A32035', 'iconobodega.png', 'logobodega.png', 'imgbodega.jpg', 'logobodega.png',
    'Ven a conocer un lugar fantástico rodeado de las murallas de la alcazaba mas grande de Europa, descubre nuestra gran variedad de vinos de la tierra y la extensa seleccion de botellas de increibles vinos de las mejores bodegas nacionales. No podrás dejar pasar la oportunidad de degustar los exquisitos ibéricos y quesos de la zona.',
    'imgdescripcionbodega.jpg', 'imgparallaxbodega.jpg', 'Plaza San José Nº7 <br> 06001 <b>(Badajoz)</b>', '924241526', 'bodegasanjose07@gmail.com', 'https://www.facebook.com/laranalocaterraza/', 'https://www.instagram.com/antiguallacopas/', 'https://www.youtube.com/', '622181473');

insert into categoria(idNegocio, nombreCategoria) values
  (1, 'Vermuts'),
  (1, 'Tapas'),
  (1, 'Embutidos y Quesos'),
  (1, 'Entrantes'),
  (1, 'Raciones'),
  (1, 'Tostas'),
  (1, 'Brochetas'),
  (1, 'Menú Infantil'),
  (1, 'Postres');

insert into producto(idCategoria, nombreProducto, descripcionProducto, precioProducto) values
  (1, 'Roberto Amillo', null, 3.50),
  (1, 'La Copa', null, 3.50),
  (1, 'Martínez Lacuesta', null, 3.50),
  (1, 'Yzaguirre Blanco', null, 3.50),
  (1, 'Yzaguirre Rojo', null, 3.50),
  (1, 'Yzaguirre Rosado', null, 3.50),
  (1, 'Yzaguirre Reserva Rojo', null, 4.00),
  (1, 'Yzaguirre 1884', null, 5.50),
  (1, 'Martini Riserva Speciale', null, 4.00),
  (1, 'Martini Rosso', null, 3.50),
  (1, 'Falset', null, 3.50),
  (1, 'Lacuesta Rojo', null, 3.50),
  (1, 'Dos Deus', null, 5.00),
  (1, 'Atxa', null, 3.50),
  (1, 'ST. Petroni', null, 4.50),
  (1, 'Txurrut', null, 3.50),
  (1, 'Medusa', null, 3.00),
  (1, 'Zecchini', null, 4.00),
  (1, 'Golfo', null, 4.00),
  (1, 'Miró', null, 4.00);

insert into producto(idCategoria, nombreProducto, descripcionProducto, precioProducto) values
  (2, 'Jamón Ibérico de Bellota', null, 5.00),
  (2, 'Lomo Ibérico de Bellota', null, 5.00),
  (2, 'Chorizo Ibérico de Bellota', null, 3.50),
  (2, 'Salchichón Ibérico de Bellota', null, 3.50),
  (2, 'Lomito Ibérico de Bellota', null, 5.00),
  (2, 'Lomo Doblao Ibérico de Bellota', null, 5.50),
  (2, 'Queso de Oveja Curado', null, 3.50),
  (2, 'Queso de Cabra Curado', null, 3.50),
  (2, 'Queso de Cabra en Rulo', null, 3.00),
  (2, 'Torta de Tierra de Barros', null, 3.50);

insert into producto(idCategoria, nombreProducto, descripcionProducto, precioProducto) values
  (3, 'Jamón Ibérico de Bellota', null, 22.50),
  (3, 'Lomo Ibérico de Bellota', null, 22.50),
  (3, 'Chorizo Ibérico de Bellota', null, 14.50),
  (3, 'Salchichón Ibérico de Bellota', null, 14.50),
  (3, 'Lomito Ibérico de Bellota', null, 23.00),
  (3, 'Lomo Doblao Ibérico de Bellota', null, 23.50),
  (3, 'Queso de Oveja Curado', null, 14.50),
  (3, 'Queso de Cabra Curado', null, 14.00),
  (3, 'Surtido de Ibéricos y Queso', null, 21.00),
  (3, 'Surtido de Quesos', null, 20.00);

insert into producto(idCategoria, nombreProducto, descripcionProducto, precioProducto) values
  (4, 'Ensalada de Ahumados con Cogollos de Lechuga', null, 14.50),
  (4, 'Ensalada de Micuit de Pato', 'con Frutos Rojos, Pasas y Nueces', 14.50),
  (4, 'Ensalada Templada de Pulpo y Langostinos', null, 14.50),
  (4, 'Ensalada de Espinacas', 'con Bacon, Rulo de Cabra y Piñones', 14.50),
  (4, 'Ensalada Tropical', 'con Frutos Secos, Tomates Cherry, Manzana, Piña, Melocoton, Mozzarela y Kiwi', 14.50),
  (4, 'Croquetas de Boletus y Jamón Ibérico', null, 12.00),
  (4, 'Croquetas de Bacalao', null, 12.00),
  (4, 'Croquetas de Pollo y Bacón', null, 12.00),
  (4, 'Croquetas Surtidas', null, 12.00),
  (4, 'Revuelto Bodega', 'con Esparragos Trigueros, Gambas, Boletus, Jamón y Pimientos Asados', 12.50),
  (4, 'Revuelto de Gulas', 'con Gambas y Pulpo', 13.50),
  (4, 'Lacón con Pimentón de la Vera', null, 11.00),
  (4, 'Surtido de Ahumados', null, 17.00),
  (4, 'Bacalao Dorado', null, 11.00),
  (4, 'Bacalao a la Nata', 'con Gambas y Espinacas', 11.50),
  (4, 'Gambones a la Plancha', null, 18.50),
  (4, 'Pulpo Bodega', null, 20.00),
  (4, 'Tartar de Atún', null, 20.00);

insert into producto(idCategoria, nombreProducto, descripcionProducto, precioProducto) values
  (5, 'Lomo de Bacalao a la Plancha', null, 17.00),
  (5, 'Lomo de Bacalao con Almejas y Gambas', null, 17.00),
  (5, 'Magret de Pato a la Piña', null, 16.00),
  (5, 'Cochifrito', null, 16.00),
  (5, 'Carrillada Ibérica al Oporto', null, 16.00),
  (5, 'Lomo Mechado con Salsa de Pimientos del Piquillo', null, 11.50),
  (5, 'Presa Ibérica a la Plancha', null, 17.50),
  (5, 'Solomillo a la Plancha con Salsa', 'a la Torta de Barros, Ajo Tostado ó Miel y Mostaza', 13.50),
  (5, 'Solomillo Ibérico a la Plancha', null, 17.00),
  (5, 'Entrecot de Vaca Premium', null, 22.00),
  (5, 'Chuletitas de Cordero Lechal', null, 17.00),
  (5, 'Bodega Burguer', null, 9.00);

insert into producto(idCategoria, nombreProducto, descripcionProducto, precioProducto) values
  (6, '01. Solomillo a la Torta de Barros', null, 12.00),
  (6, '02. Solomillo a la Mostaza y Miel', 'con Cebolla Caramelizada', 12.00),
  (6, '03. Solomillo al Ajo Tostado', null, 12.00),
  (6, '04. Presa Ibérica con Salsa de Tomate', null, 13.00),
  (6, '05. Solomillo de Ternera con Foie', 'con Cebolla Caramelizada y reducción de Pedro Ximenez', 14.50),
  (6, '06. Morcilla de Burgos con Rulo de Cabra Gratinado', 'y Reducción de Fresas', 11.00),
  (6, '07. Morcilla de Burgos con Piñones y Huevos de Codorniz', null, 11.00),
  (6, '08. Mozzarella y Pepperoni', 'con Tomate y Orégano', 11.50),
  (6, '09. Jamón Ibérico con Foie', 'y Reducción de Crema Balsámica', 12.50),
  (6, '10. Bacalao al Ajo Arriero', null, 12.00),
  (6, '11. Bacalao a la Nata Gratinado', null, 12.50),
  (6, '12. Gulas con Foie y Gambas', null, 13.00),
  (6, '13. Verduras Asadas', 'con Nueces y Reducción de Fresas', 10.50),
  (6, '14. Rollitos de Bacalao y Guacamole', null, 12.00),
  (6, '15. Esparragos Trigueros, Jamón Ibérico y Huevos de Codorniz', null, 11.50),
  (6, '16. Rulo de Cabra', 'con Nueces, Miel y Reducción de Fresas', 11.50),
  (6, '17. Anchoas del Cantábrico', 'con Mermelada de Tomáte', 13.50),
  (6, '18. Pisto Manchego con Anchoas del Cantábrico', null, 13.50),
  (6, '19. Variado de Ahumados', 'con Pimienta Negra y Aceite de Oliva', 13.50),
  (6, '20. Rollitos de Salmón Ahumado y Crema de Queso', 'con Nueces y Pasas', 13.00),
  (6, '21. Atún Rojo Marinado', 'con Pimienta Negra y Aceite de Oliva', 12.50),
  (6, '22. Ventresca de Atún', 'con Pimientos Asados', 11.00),
  (6, '23. Lacón', 'con Pimentón de la Vera y Aceite de Oliva', 10.50),
  (6, '24. Salmorejo y Jamón Ibérico', null, 11.50),
  (6, '25. Salmorejo, Carne Mechada y Jamón Ibérico', null, 12.00),
  (6, '26. Salmorejo y Bacalao Ahumado', 'con Pimentón de la Vera', 12.00),
  (6, '27. Carne Mechada, Micuit de Pato y Huevos de Codorniz', null, 13.00),
  (6, '28. Mozzarella y Albahaca', 'con Aceitunas y Tomate Cherry', 12.00);

insert into producto(idCategoria, nombreProducto, descripcionProducto, precioProducto) values
  (7, 'Brocheta de Pollo y Bacón', null, 14.50),
  (7, 'Brocheta de Entrecot de Vaca', null, 18.50),
  (7, 'Brocheta de Pierna de Cordero', null, 16.00),
  (7, 'Brocheta de Rape y Gambones', null, 19.50),
  (7, 'Brocheta de Atún', null, 17.00),
  (7, 'Brocheta de Lomo de Salmón y Sepia', null, 14.00);

insert into producto(idCategoria, nombreProducto, descripcionProducto, precioProducto) values
  (8, 'Nuggets de Pollo', null, 7.50),
  (8, 'Plato Combinado', 'Solomillo, Patatas Fritas, Huevos Fritos y Croquetas de Pollo y Bacón', 9.50);

insert into producto(idCategoria, nombreProducto, descripcionProducto, precioProducto) values
  (9, 'Brigadeiro', 'Bizcocho de Chocolate con Chocolate Líquido y Virutas de Chocolate', 4.50),
  (9, 'Bolacha', 'Galletas alternadas entre Crema de Café y Mantequilla', 4.50),
  (9, 'Tarta de Naranja', 'Bizcocho de Naranja Enrollado Sobre Si Mismo', 4.50),
  (9, 'Flan de Huevo', 'Clásica Receta Tradicional con Nata y Sirope de Caramelo', 4.50),
  (9, 'Tiramisú', 'Capas de Galletas Bañadas en Amaretto Intercaladas entre Crema de Queso', 4.50),
  (9, 'Surtido de Postres', null, 16.50),
  (9, 'Magnum', 'Chocolate, Almendrado ó Chocolate Blanco', 2.50),
  (9, 'Cornetto', null, 2.50);
