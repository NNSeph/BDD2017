create schema csgo1;
use csgo1;

create table Empleado(
id_empleado int not null auto_increment primary key,
nombre varchar(20),
fecha_nacimiento date,
fecha_ingreso date,
sueldo int,
dni int,
domicilio varchar(20));

create table Area(
id_area int not null auto_increment primary key,
nombre varchar(20),
presupuesto_anual int,
empleado_jefe int,
foreign key (empleado_jefe) references Empleado(id_empleado));

create table Solicitud(
id_solicitud int not null auto_increment primary key,
fecha date,
responsable int,
foreign key (responsable) references empleado(id_empleado));

create table Producto(
id_producto int not null auto_increment primary key,
tipo varchar(20),
descripcion varchar(100));

create table Item_Solicitud(
id_item_solicitud int not null auto_increment primary key,
id_solicitud int,
id_producto int,
cant_solicitud int,
unidad_medida varchar(20),
foreign key (id_solicitud) references Solicitud(id_solicitud),
foreign key (id_producto) references Producto(id_producto));

create table Proveedor(
id_proveedor int not null auto_increment primary key,
nombre varchar(20),
provincia varchar(20));

create table Orden_Compra(
id_orden_compra int not null auto_increment primary key,
id_proveedor int,
fecha_orden date,
monto_total int,
fecha_entrega date,
Estado varchar(20),
foreign key (id_proveedor) references Proveedor(id_proveedor));

create table Item_Compra(
id_item_solicitud int not null auto_increment primary key,
id_solicitud int,
id_producto int,
id_orden_compra int,
cant_solicitud int,
cant_pedida int,
unidad_medida varchar(20),
valor_unitario int,
valor_total int,
foreign key (id_solicitud) references Solicitud(id_solicitud),
foreign key (id_producto) references Producto(id_producto),
foreign key (id_orden_compra) references Orden_Compra(id_orden_compra));

create table Entrada_Almacen(
id_entrada_almacen int not null auto_increment primary key,
id_orden int,
fecha date,
id_proveedor int,
valor_total int,
foreign key (id_proveedor) references Proveedor(id_proveedor));

create table Item_Entrada_Almacen(
id_item_entrada_almacen int not null auto_increment primary key,
id_entrada_almacen int,
codigo_producto int,
cantidad_entregada int,
foreign key (codigo_producto) references Producto(id_producto));

create table Salida_Almacen(
id_salida_almacen int not null auto_increment primary key,
id_empleado_responsable int,
id_area int,
fecha_salida date,
fecha_entrega date,
codigo_producto int,
cantidad_entregada int,
id_entrada_almacen int,
foreign key (id_empleado_responsable) references Empleado(id_empleado),
foreign key (id_area) references Area(id_area),
foreign key (codigo_producto) references Producto(id_producto),
foreign key (id_entrada_almacen) references Entrada_Almacen(id_entrada_almacen));

create table Producto_Inventario(
id_producto_inventario int not null auto_increment primary key,
id_area int,
id_responsable int,
fecha_entrega date,
id_solicitud int,
foreign key (id_area) references Area(id_area),
foreign key (id_responsable) references Empleado(id_empleado),
foreign key (id_solicitud) references Solicitud(id_solicitud));