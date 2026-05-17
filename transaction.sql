BEGIN;

-- Crear pedido

INSERT INTO pedidos (usuario_id, fecha)
VALUES (1, CURRENT_DATE);

-- Agregar productos

INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, subtotal)
VALUES
(1, 1, 2, 50000);

-- Actualizar stock

UPDATE stock
SET cantidad = cantidad - 2
WHERE producto_id = 1;

COMMIT;