use csgo1;

insert into Empleado(nombre,fecha_nacimiento,fecha_ingreso,sueldo,dni,domicilio)
values('Fabricio',19950522,20160317,20000,42999777,'Cosquin');
insert into Empleado(nombre,fecha_nacimiento,fecha_ingreso,sueldo,dni,domicilio)
values('Pedro',19900809,20130727,40000,37269447,'Muñiz');
insert into Empleado(nombre,fecha_nacimiento,fecha_ingreso,sueldo,dni,domicilio)
values('Franco',19940225,20140312,30000,39329244,'Bruix');
insert into Empleado(nombre,fecha_nacimiento,fecha_ingreso,sueldo,dni,domicilio)
values('Daniel',19920122,20160922,25000,40164324,'Guamini');
insert into Empleado(nombre,fecha_nacimiento,fecha_ingreso,sueldo,dni,domicilio)
values('Rocio',19940527,20110407,27500,38132767,'Pergamino');

insert into Area(nombre,presupuesto_anual,empleado_jefe)
values('Compras',80000,1);
insert into Area(nombre,presupuesto_anual,empleado_jefe)
values('Almacen',90000,2);
insert into Area(nombre,presupuesto_anual,empleado_jefe)
values('Inventario',75000,3);
insert into Area(nombre,presupuesto_anual,empleado_jefe)
values('Ventas',60000,4);
insert into Area(nombre,presupuesto_anual,empleado_jefe)
values('Negocio',100000,5);

insert into Solicitud(id_area,fecha,responsable)
value(1,20160522, 1);
insert into Solicitud(id_area,fecha,responsable)
value(1,20150204, 2);
insert into Solicitud(id_area,fecha,responsable)
value(2,20140912, 3);
insert into Solicitud(id_area,fecha,responsable)
value(3,20120102, 4);
insert into Solicitud(id_area,fecha,responsable)
value(3,20130709, 5);



insert into Producto(tipo,descripcion)
value ('Suministro', 'Bebida marca CocaCola');
insert into Producto(tipo,descripcion)
value ('Mueble', 'Armario');
insert into Producto(tipo,descripcion)
value ('Suministro', 'Pack de papas Pringles');
insert into Producto(tipo,descripcion)
value ('Mueble', 'Mesa de Kaoba');
insert into Producto(tipo,descripcion)
value ('Mueble', 'Cajonera de Pino');

insert into Item_Solicitud(id_solicitud,id_producto,cant_solicitud,unidad_medida)
value (1,1,10,'Centimetros');
insert into Item_Solicitud(id_solicitud,id_producto,cant_solicitud,unidad_medida)
value (2,2,20,'Centimetros');
insert into Item_Solicitud(id_solicitud,id_producto,cant_solicitud,unidad_medida)
value (3,3,30,'Centimetros');
insert into Item_Solicitud(id_solicitud,id_producto,cant_solicitud,unidad_medida)
value (4,4,45,'Centimetros');
insert into Item_Solicitud(id_solicitud,id_producto,cant_solicitud,unidad_medida)
value (5,5,58,'Centimetros');

insert into Proveedor(nombre,provincia)
value ('Calogero Company','Buenos Aires');
insert into Proveedor(nombre,provincia)
value ('Alfonso Company','Misiones');
insert into Proveedor(nombre,provincia)
value ('Toscano Company','Tucuman');
insert into Proveedor(nombre,provincia)
value ('Varela Company','Cordoba');
insert into Proveedor(nombre,provincia)
value ('Guibarra Company','Jujuy');

insert into Orden_Compra(id_proveedor,id_solicitud,fecha_orden,monto_total,fecha_entrega,Estado)
value (1,1,20150506,1000,20160609,'');
insert into Orden_Compra(id_proveedor,id_solicitud,fecha_orden,monto_total,fecha_entrega,Estado)
value (2,2,20120114,10000,20140221,'');
insert into Orden_Compra(id_proveedor,id_solicitud,fecha_orden,monto_total,fecha_entrega,Estado)
value (3,3,20140922,20000,20170902,'');
insert into Orden_Compra(id_proveedor,id_solicitud,fecha_orden,monto_total,fecha_entrega,Estado)
value (4,4,20130307,35000,20140115,'');
insert into Orden_Compra(id_proveedor,id_solicitud,fecha_orden,monto_total,fecha_entrega,Estado)
value (5,5,20161116,114000,20170401,'');

insert into Item_Compra(id_solicitud,id_producto,id_orden_compra,cant_solicitud,cant_pedida,unidad_medida,valor_unitario,valor_total)
value (1,1,1,10,10,'Centimetros',10,100);
insert into Item_Compra(id_solicitud,id_producto,id_orden_compra,cant_solicitud,cant_pedida,unidad_medida,valor_unitario,valor_total)
value (2,2,2,20,20,'Centimetros',20,400);
insert into Item_Compra(id_solicitud,id_producto,id_orden_compra,cant_solicitud,cant_pedida,unidad_medida,valor_unitario,valor_total)
value (3,3,3,30,30,'Metros',30,900);
insert into Item_Compra(id_solicitud,id_producto,id_orden_compra,cant_solicitud,cant_pedida,unidad_medida,valor_unitario,valor_total)
value (4,4,4,40,40,'Milimetros',40,1600);
insert into Item_Compra(id_solicitud,id_producto,id_orden_compra,cant_solicitud,cant_pedida,unidad_medida,valor_unitario,valor_total)
value (5,5,5,50,50,'Metros',50,2500);

insert into Entrada_Almacen(id_orden,fecha,id_proveedor,valor_total)
value (1,20150422,1,1500);
insert into Entrada_Almacen(id_orden,fecha,id_proveedor,valor_total)
value (2,20141102,2,3500);
insert into Entrada_Almacen(id_orden,fecha,id_proveedor,valor_total)
value (3,20160309,3,7000);
insert into Entrada_Almacen(id_orden,fecha,id_proveedor,valor_total)
value (4,20130711,4,9500);
insert into Entrada_Almacen(id_orden,fecha,id_proveedor,valor_total)
value (5,20121219,5,12500);

insert into Item_Entrada_Almacen(id_entrada_almacen,codigo_producto,cantidad_entregada)
value (1,1,10);
insert into Item_Entrada_Almacen(id_entrada_almacen,codigo_producto,cantidad_entregada)
value (2,2,20);
insert into Item_Entrada_Almacen(id_entrada_almacen,codigo_producto,cantidad_entregada)
value (3,3,30);
insert into Item_Entrada_Almacen(id_entrada_almacen,codigo_producto,cantidad_entregada)
value (4,4,40);
insert into Item_Entrada_Almacen(id_entrada_almacen,codigo_producto,cantidad_entregada)
value (5,5,50);

insert into Salida_Almacen(id_empleado_responsable,id_area,fecha_salida,fecha_entrega,codigo_producto,cantidad_entregada,id_entrada_almacen)
value (1,1,20160222,20170311,1,10,1);
insert into Salida_Almacen(id_empleado_responsable,id_area,fecha_salida,fecha_entrega,codigo_producto,cantidad_entregada,id_entrada_almacen)
value (2,2,20140607,20150801,2,20,2);
insert into Salida_Almacen(id_empleado_responsable,id_area,fecha_salida,fecha_entrega,codigo_producto,cantidad_entregada,id_entrada_almacen)
value (3,3,20150305,20160917,3,30,3);
insert into Salida_Almacen(id_empleado_responsable,id_area,fecha_salida,fecha_entrega,codigo_producto,cantidad_entregada,id_entrada_almacen)
value (4,4,20130308,20140128,4,40,4);
insert into Salida_Almacen(id_empleado_responsable,id_area,fecha_salida,fecha_entrega,codigo_producto,cantidad_entregada,id_entrada_almacen)
value (5,5,20140109,20150825,5,50,5);

insert into Producto_Inventario(id_area,id_responsable,fecha_entrega,id_solicitud)
value (1,1,20140525,1);
insert into Producto_Inventario(id_area,id_responsable,fecha_entrega,id_solicitud)
value (2,2,20130314,2);
insert into Producto_Inventario(id_area,id_responsable,fecha_entrega,id_solicitud)
value (3,3,20150903,3);
insert into Producto_Inventario(id_area,id_responsable,fecha_entrega,id_solicitud)
value (4,4,20121019,4);
insert into Producto_Inventario(id_area,id_responsable,fecha_entrega,id_solicitud)
value (5,5,20161211,5);

