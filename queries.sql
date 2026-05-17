--Listar todos los productos junto a su categoría
SELECT productos.nombre AS producto,
       categorias.nombre AS categoria
FROM productos
INNER JOIN categorias
ON productos.categoria_id = categorias.id;

--Buscar productos por nombre
SELECT *
FROM productos
WHERE nombre ILIKE '%mouse%';

--Filtrar productos por categoría
SELECT productos.nombre,
       categorias.nombre AS categoria
FROM productos
INNER JOIN categorias
ON productos.categoria_id = categorias.id
WHERE categorias.nombre = 'Tecnología';

--Mostrar los productos asociados a un pedido
SELECT pedidos.id AS pedido,
       productos.nombre AS producto,
       detalle_pedido.cantidad
FROM detalle_pedido
INNER JOIN pedidos
ON detalle_pedido.pedido_id = pedidos.id
INNER JOIN productos
ON detalle_pedido.producto_id = productos.id
WHERE pedidos.id = 1;

--Calcular el total de un pedido
SELECT pedido_id,
       SUM(subtotal) AS total_pedido
FROM detalle_pedido
GROUP BY pedido_id;

--Identificar productos con stock bajo
SELECT productos.nombre,
       stock.cantidad
FROM productos
INNER JOIN stock
ON productos.id = stock.producto_id
WHERE stock.cantidad < 5;