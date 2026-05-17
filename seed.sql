--Categoria
INSERT INTO categorias (nombre)
VALUES
('Tecnología'),
('Hogar'),
('Accesorios');

--Usuarios
INSERT INTO usuarios (nombre, correo, rol)
VALUES
('Camila', 'camila@email.com', 'cliente'),
('Javier', 'javier@email.com', 'cliente'),
('Fernanda', 'fernanda@email.com', 'cliente'),
('Martín', 'martin@email.com', 'cliente'),
('Admin', 'admin@email.com', 'admin');

--Productos
INSERT INTO productos (nombre, precio, categoria_id)
VALUES
('Mouse Gamer', 25000, 1),
('Teclado Mecánico', 45000, 1),
('Monitor 24 Pulgadas', 120000, 1),
('Audífonos Bluetooth', 35000, 1),
('Webcam HD', 28000, 1),

('Lámpara LED', 18000, 2),
('Silla de Oficina', 95000, 2),
('Escritorio Madera', 150000, 2),

('Mochila Laptop', 32000, 3),
('Mousepad RGB', 12000, 3);

--stock
INSERT INTO stock (producto_id, cantidad)
VALUES
(1, 15),
(2, 10),
(3, 5),
(4, 8),
(5, 12),
(6, 20),
(7, 4),
(8, 3),
(9, 9),
(10, 25);

--Pedidos
INSERT INTO pedidos (usuario_id, fecha)
VALUES
(1, '2026-05-10'),
(2, '2026-05-11'),
(3, '2026-05-12');