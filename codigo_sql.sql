-- Codigo para la extracion de los datos: numero de factura, nombre del cliente, tipo de carne,
--	cantidad, valor unitario y fecha

SELECT f.id_factura, cl.nombre, c.gramos, d.cantidad, c.valor_unitario, f.fecha
FROM pedidos.detalle AS d
	JOIN pedidos.factura AS f ON f.id_factura = d.id_factura
	JOIN pedidos.carne AS c ON c.id_carne = d.id_carne
	JOIN pedidos.cliente AS cl ON cl.id_cliente = f.id_cliente
WHERE f.fecha <= '2023-01-31'
ORDER BY id_factura;
