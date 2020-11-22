USE musimundos;

#			TABLE REFERENCE
# Willie Dixon
SELECT canciones.nombre AS "CANCIONES", generos.nombre AS "GENERO", canciones.compositor AS "COMPOSITOR"
FROM canciones
INNER JOIN generos
ON id_genero = generos.id
WHERE canciones.compositor = "Willie Dixon"
AND generos.nombre = "Blues";

#			JOINS
# Rock nacional
SELECT canciones.nombre
FROM canciones
INNER JOIN generos
ON id_genero = generos.id
WHERE generos.nombre = "Rock";

# Deep Purple
SELECT albumes.titulo, artistas.nombre
FROM artistas
INNER JOIN albumes
ON id_artista = artistas.id
WHERE artistas.nombre = "Deep Purple";

# MPEG
SELECT canciones.nombre
FROM canciones
INNER JOIN tipos_de_medio
ON id_tipo_de_medio = tipos_de_medio.id
WHERE tipos_de_medio.nombre = "MPEG audio file";

#			DISTINCTS
# Empleados
SELECT DISTINCT titulo
FROM empleados;

#			FUNCIONES DE MySQL 1
# DAB 2020 - SQL II - Funciones MySQL I #1 - Ranking canciones 2
SELECT DISTINCT CONCAT("La canción ", nombre, " fue compuesta por ", compositor)
FROM canciones;

# DAB 2020 - SQL II - Funciones MySQL I #3 - Edad empleados
SELECT FLOOR(DATEDIFF(fecha_de_contratacion,fecha_nacimiento) / 365)
FROM empleados;

# DAB 2020 - SQL II - Funciones MySQL I #4 - Última factura
SELECT MONTH(fecha_factura)
FROM facturas
WHERE id_cliente = "2"
ORDER BY fecha_factura;

#			FUNCIONES DE MySQL 2
# Clientes de Brasil
SELECT COUNT(ID) 
FROM clientes
WHERE pais = "Brazil";

# Canciones por género
SELECT generos.nombre, COUNT(*)
FROM generos
LEFT JOIN canciones
ON id_genero = generos.id
WHERE generos.nombre = "Blues";

# Balance comercial
SELECT SUM(total)
FROM facturas;

# Duración de los albums
SELECT canciones.nombre, canciones. milisegundos, AVG(canciones.milisegundos)
FROM canciones
INNER JOIN albumes
ON id_album = albumes.id
WHERE albumes.titulo = "Let There Be Rock";

# DAB 2020 - SQL II - Funciones MySQL II #5 - Moviendo archivos
SELECT MIN(bytes)
FROM canciones;

# DAB 2020 - SQL II - Funciones MySQL II #6 - Descuento
SELECT MAX(total)
FROM facturas
WHERE id_cliente = "48";