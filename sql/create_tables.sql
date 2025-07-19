use corinser
;
-- Dimensión Fecha
CREATE TABLE dim_fecha (
    fecha_id DATE PRIMARY KEY,
    anio INT,
    mes INT,
    dia INT
);

-- Dimensión Canal
CREATE TABLE dim_canal (
    codcanal VARCHAR(10) PRIMARY KEY,
    nombre_canal VARCHAR(50)
);

-- Dimensión Tienda
CREATE TABLE dim_tienda (
    codtienda INT PRIMARY KEY,
    nombre_tienda VARCHAR(100),
    tipo_tienda VARCHAR(50),
    cantidad_empleados INT,
    tamanio_area_ventas DECIMAL(10,2)
);

-- Dimensión Gerente
CREATE TABLE dim_gerente (
    gerente_id INT PRIMARY KEY,
    nombre_gerente VARCHAR(100)
);

-- Dimensión Producto
CREATE TABLE dim_producto (
    codproducto VARCHAR(20) PRIMARY KEY,
    nombre_producto VARCHAR(100),
    subcategoria VARCHAR(50),
    categoria VARCHAR(50)
);

-- Dimensión Moneda
CREATE TABLE dim_moneda (
    codmoneda VARCHAR(10) PRIMARY KEY,
    nombre_moneda VARCHAR(20)
);

-- Dimensión Promoción
CREATE TABLE dim_promocion (
    codpromocion VARCHAR(10) PRIMARY KEY,
    nombre_promocion VARCHAR(100),
    porcentaje_descuento DECIMAL(5,2)
);

-- Tabla de Hechos: Inventario
CREATE TABLE fact_inventario (
    fecha_id DATE,
    codtienda INT,
    gerente_id INT,
    codproducto VARCHAR(20),
    codmoneda VARCHAR(10),

    estado VARCHAR(20),
    cantidad_disponible INT,
    cantidad_ordenado INT,
    cantidad_habilitar INT,
    cantidad_promedio DECIMAL(10,4),
    dias_permancen_stock INT,
    dias_minimos_stock INT,
    dias_maximos_stock INT,

    PRIMARY KEY (fecha_id, codtienda, codproducto),
    FOREIGN KEY (fecha_id)    REFERENCES dim_fecha(fecha_id),
    FOREIGN KEY (codtienda)   REFERENCES dim_tienda(codtienda),
    FOREIGN KEY (gerente_id)  REFERENCES dim_gerente(gerente_id),
    FOREIGN KEY (codproducto) REFERENCES dim_producto(codproducto),
    FOREIGN KEY (codmoneda)   REFERENCES dim_moneda(codmoneda)
);

-- Tabla de Hechos: Ventas
CREATE TABLE fact_ventas (
    fecha_id DATE,
    codcanal VARCHAR(10),
    codtienda INT,
    gerente_id INT,
    codproducto VARCHAR(20),
    codpromocion VARCHAR(10),
    codmoneda VARCHAR(10),

    precio_unitario DECIMAL(10,2),
    precio_sugerido DECIMAL(10,2),
    estado varchar(10),
    costo_unitario_venta DECIMAL(10,4),
    precio_unitario_venta DECIMAL(10,4),
    cantidad_vendida INT,
    cantidad_devuelta INT,
    monto_devuelto DECIMAL(10,4),
    cantidad_descuento INT,
    monto_descontado DECIMAL(10,4),
    total_costo DECIMAL(10,4),
    monto_total_ventas DECIMAL(10,4),

    PRIMARY KEY (fecha_id, codtienda, codproducto),
    FOREIGN KEY (fecha_id)      REFERENCES dim_fecha(fecha_id),
    FOREIGN KEY (codcanal)      REFERENCES dim_canal(codcanal),
    FOREIGN KEY (codtienda)     REFERENCES dim_tienda(codtienda),
    FOREIGN KEY (gerente_id)    REFERENCES dim_gerente(gerente_id),
    FOREIGN KEY (codproducto)   REFERENCES dim_producto(codproducto),
    FOREIGN KEY (codpromocion)  REFERENCES dim_promocion(codpromocion),
    FOREIGN KEY (codmoneda)     REFERENCES dim_moneda(codmoneda)
);
