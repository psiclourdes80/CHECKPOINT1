select customerNumber, country, creditLimit 
from customers where country in ("USA", "France")
and creditLimint > 100000;

e join
select * from empleado as e
join puesto as p
on e.id_puesto = p.id_puesto;

select * from empleado as e
left join puesto as p
on e.id_puesto = p.id_puesto;



use tienda;

create view LUEJ2 as
(select v.clave, v.fecha, a.nombre as producto, a.precio, concat(e.nombre, ' ', e.apellido_paterno) empleado
from venta v
join empleado e
on v.id_empleado = e.id_empleado
join articulo a
on v.id_articulo = a.id_articulo);

create view LUEJ2 as
(select v.clave, v.fecha, a.nombre as producto, a.precio, concat(e.nombre, ' ', e.apellido_paterno) empleado
from venta v
join empleado e
on v.id_empleado = e.id_empleado
join articulo a
on v.id_articulo = a.id_articulo);

select p.nombre, count(v.clave) as total
from venta v
join empleado e
on v.id_empleado = e.id_empleado
join puesto p
on e.id_puesto = p.id_puesto
group by p.nombre;

create view LULUEJ3 as
(select p.nombre, count(v.clave) as total
from venta v
join empleado e
on v.id_empleado = e.id_empleado
join puesto p
on e.id_puesto = p.id_puesto
group by p.nombre);





