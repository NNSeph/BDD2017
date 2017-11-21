use csgo;

-- Procedimientos de Almacenado
-- Ejercicio nro 1

Drop procedure if exists PA_EJ1;
Delimiter $$
Create procedure PA_EJ1 (in _num_entrada int)
BEGIN
select Count(SA.id_salida_almacen), AVG(EA.valor_total)
from Salida_Almacen as SA join Entrada_Almacen as EA
ON (EA.id_Entrada_Almacen = SA.id_Entrada_Almacen)
where (_num_Entrada = SA.id_Entrada_Almacen);
END $$
Delimiter ;

-- Ejercicio nro 2

Drop procedure if exists PA_EJ2;
Delimiter $$
Create procedure PA_EJ2 (IN _area int, OUT _suma int)
BEGIN
select sum(oc.monto_total) into _suma
from orden_compra as oc join solicitud as s on (oc.id_solicitud= s.id_solicitud) join area as a on (s.id_area = a.id_area)
where a.id_area = _area ;
END$$
Delimiter ;

CALL PA_EJ2(1, @xd);
select @xd;

-- Ejercicio nro 3

Drop procedure if exists PA_EJ3;
Delimiter $$
Create procedure PA_EJ3 ()
BEGIN

END$$
Delimiter ;

