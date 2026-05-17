DROP TABLE IF EXISTS detalle_pedido CASCADE;
DROP TABLE IF EXISTS pedidos CASCADE;
DROP TABLE IF EXISTS stock CASCADE;
DROP TABLE IF EXISTS productos CASCADE;
DROP TABLE IF EXISTS categorias CASCADE;
DROP TABLE IF EXISTS usuarios CASCADE;

--Usuarios
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    rol VARCHAR(20) NOT NULL
);

--Categoria
CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

--Productos
CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio NUMERIC(10,2) NOT NULL,
    categoria_id INTEGER,

    FOREIGN KEY (categoria_id)
    REFERENCES categorias(id)
);

--Stock
CREATE TABLE stock (
    id SERIAL PRIMARY KEY,
    producto_id INTEGER UNIQUE,
    cantidad INTEGER NOT NULL,

    FOREIGN KEY (producto_id)
    REFERENCES productos(id)
);

--Pedidos
CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    usuario_id INTEGER,
    fecha DATE,

    FOREIGN KEY (usuario_id)
    REFERENCES usuarios(id)
);

--Detalle pedido
CREATE TABLE detalle_pedido (
    id SERIAL PRIMARY KEY,
    pedido_id INTEGER,
    producto_id INTEGER,
    cantidad INTEGER,
    subtotal NUMERIC(10,2),

    FOREIGN KEY (pedido_id)
    REFERENCES pedidos(id),

    FOREIGN KEY (producto_id)
    REFERENCES productos(id)
);

