USE musimundos;

#			INSERTAR, ACTUALIZAR, ELIMINAR
# DAB 2020 - SQL II - Insert, Update, Delete #1 - Nuevos géneros de música
INSERT INTO GENEROS (ID,NOMBRE)
VALUES (26, "CUMBIA");

#			SELECCIONES
# ¿Qué álbumes tenemos?
SELECT TITULO 
FROM albumes;

# Control de ventas v3
SELECT PRIMER_NOMBRE, TELEFONO 
FROM clientes;

#			DONDE ORDENAS POR
# Clientes de Estados Unidos
SELECT PRIMER_NOMBRE,TELEFONO 
FROM clientes 
WHERE PAIS = "USA";

# DAB 2020 - SQL I - Where y Order By #2 - Canciones semi-largas
SELECT NOMBRE
FROM canciones
WHERE MILISEGUNDOS BETWEEN "200000" AND "300000";

# Todos los géneros de los albums.
SELECT NOMBRE
FROM generos
ORDER BY NOMBRE;

# Nombres de clientes ordenados v2
SELECT PRIMER_NOMBRE, APELLIDO, PAIS, CIUDAD 
FROM clientes
ORDER BY PAIS DESC, CIUDAD;

#			LIMIT Y OFFSET
# Top 3
SELECT ID_ALBUM, NOMBRE, MILISEGUNDOS
FROM canciones
ORDER BY MILISEGUNDOS DESC
LIMIT 3;

# DAB 2020 - SQL I - Limit y Offset #2 - Paginación
SELECT NOMBRE, COMPOSITOR
FROM canciones
ORDER BY NOMBRE 
LIMIT 5
OFFSET 5;

#			ENTRE Y ME GUSTA
# Compositores con A
SELECT NOMBRE, COMPOSITOR
FROM canciones
WHERE COMPOSITOR LIKE "A%";

# Lista especial de generos
SELECT NOMBRE 
FROM generos
WHERE NOMBRE LIKE "%RO%";

# Selección de canciones
SELECT ID, NOMBRE
FROM canciones
WHERE ID BETWEEN 10 AND 20;

#			ALIAS
# DAB 2020 - SQL I - Alias #1 - Tipos de medio
SELECT NOMBRE AS "nombres_de_medios"
FROM tipos_de_medio;