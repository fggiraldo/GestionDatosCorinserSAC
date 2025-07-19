-- dim_fecha
INSERT INTO dim_fecha (fecha_id, anio, mes, dia) VALUES 
('2009-02-17', 2009, 2, 17),
('2009-02-28', 2009, 2, 28),
('2009-04-10', 2009, 4, 10),
('2009-07-17', 2009, 7, 17);

-- dim_canal
INSERT INTO dim_canal (codcanal, nombre_canal) VALUES 
('01', 'Almacén'),
('02', 'En línea'),
('04', 'Distribuidor');

-- dim_tienda
INSERT INTO dim_tienda (codtienda, nombre_tienda, tipo_tienda, cantidad_empleados, tamanio_area_ventas) VALUES 
(199, 'Tienda en línea en Norteamérica de Contoso', 'En línea', 325, 500),
(263, 'Almacén nº 1 en Moscú de Contoso', 'Almacén', 65, 480),
(290, 'Almacén nº 2 en Vancouver de Contoso', 'Almacén', 95, 480),
(310, 'Distribuidor en Asia de Contoso', 'Distribuidor', 17, 93800);

-- dim_gerente
INSERT INTO dim_gerente (gerente_id, nombre_gerente) VALUES 
(212, 'Ben Smith'),
(217, 'Andrea Dunker'),
(277, 'Hugo Garcia'),
(292, 'Nuria Gonzalez');

-- dim_producto
INSERT INTO dim_producto (codproducto, nombre_producto, subcategoria, categoria) VALUES 
('0104002', NULL, NULL, NULL),
('0304037', NULL, NULL, NULL),
('0306062', NULL, NULL, NULL),
('9999999', 'Contoso Lápiz táctil E150 Red', 'Accesorios de teléfonos móviles', 'Teléfonos móviles');  -- producto inventario

-- dim_moneda
INSERT INTO dim_moneda (codmoneda, nombre_moneda) VALUES 
('007', 'EUR'),
('7', NULL);

-- dim_promocion
INSERT INTO dim_promocion (codpromocion, nombre_promocion, porcentaje_descuento) VALUES 
('001', '', 0.00),
('020', 'América del Norte Promoción de primavera', 0.05),
('024', 'Asiático Promoción de primavera', 0.20);


INSERT INTO fact_inventario (
    fecha_id, codtienda, gerente_id, codproducto, codmoneda,
    estado, cantidad_disponible, cantidad_ordenado, cantidad_habilitar,
    cantidad_promedio, dias_permancen_stock, dias_minimos_stock, dias_maximos_stock
)
VALUES (
    '2009-02-28', 290, 217, '9999999', '007',
    'Activo', 144, 0, 303,
    3.5845, 80, 14, 95
);


INSERT INTO fact_ventas (
    fecha_id, codcanal, codtienda, gerente_id, codproducto, codpromocion, codmoneda,
    precio_unitario, precio_sugerido, estado,
    costo_unitario_venta, precio_unitario_venta,
    cantidad_vendida, cantidad_devuelta, monto_devuelto,
    cantidad_descuento, monto_descontado,
    total_costo, monto_total_ventas
)
VALUES 
('2009-04-10', '04', 310, 292, '0304037', '024', '7',
 50.47, 99.00, 'Activo',
 35.5423, 69.7183,
 18, 0, 0,
 4, 55.7746,
 639.7606, 1199.1549),

('2009-07-17', '01', 263, 277, '0104002', '001', '7',
 76.45, 149.95, 'Activo',
 53.8380, 105.5986,
 20, 0, 0,
 0, 0,
 1076.7606, 2111.9718),

('2009-02-17', '02', 199, 212, '0306062', '020', '7',
 69.25, 209.00, 'Activo',
 48.7676, 147.1831,
 9, 0, 0,
 0, 0,
 438.9085, 1324.6479);