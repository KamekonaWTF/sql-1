-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
SELECT * FROM usuarios_lenguajes;


-- Ejercicio 2: Contar cuántos usuarios hay en total.
SELECT nombre, apellido, lenguaje FROM usuarios_lenguajes;


-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
SELECT count(*) FROM usuarios_lenguajes;


-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
SELECT count('JavaScript') FROM usuarios_lenguajes;


-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
SELECT nombre FROM usuarios_lenguajes WHERE edad > 28;


-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
SELECT nombre, apellido FROM usuarios_lenguajes WHERE email = 'juan.gomez@example.com';


-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
SELECT nombre, apellido FROM usuarios_lenguajes WHERE edad > 25 AND lenguaje = 'Java';


-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
SELECT count(*) FROM usuarios_lenguajes WHERE lenguaje = 'Java';


-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
SELECT nombre, apellido FROM usuarios_lenguajes WHERE lenguaje is null;


-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
SELECT nombre, edad FROM usuarios_lenguajes WHERE edad = (SELECT MIN(edad) FROM usuarios_lenguajes);


-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
SELECT nombre, edad FROM usuarios_lenguajes ORDER BY edad DESC;


-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
SELECT count(*) FROM usuarios_lenguajes WHERE edad > 28;


-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
SELECT nombre, apellido FROM usuarios_lenguajes WHERE apellido LIKE '%a%';


-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
SELECT lenguaje FROM usuarios_lenguajes ORDER BY 'lenguaje' DESC, edad < 30;


-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
SELECT nombre FROM usuarios_lenguajes WHERE edad > 25 AND lenguaje = 'TypeScript';


-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
SELECT count(*) FROM usuarios_lenguajes WHERE lenguaje = 'Python';


-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
SELECT nombre, lenguaje FROM usuarios_lenguajes ORDER BY nombre;


-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
SELECT nombre FROM usuarios_lenguajes WHERE email LIKE '%example%';


-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
SELECT nombre FROM usuarios_lenguajes WHERE lenguaje != NULL AND edad BETWEEN 25 AND 35;


-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
SELECT count(*) FROM usuarios_lenguajes WHERE lenguaje = 'CSS' AND edad < 30;


-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
SELECT nombre, count(lenguaje) FROM usuarios_lenguajes WHERE lenguaje != null;


-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
SELECT length(lenguaje) FROM usuarios_lenguajes ORDER BY length(lenguaje) DESC LIMIT 1;


-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
SELECT concat(nombre, ' ', apellido) AS fullName FROM usuarios_lenguajes;


-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
SELECT count(distinct lenguaje) FROM usuarios_lenguajes WHERE edad > 25;


-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
SELECT * FROM usuarios_lenguajes WHERE age ;


-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
SELECT nombre FROM usuarios_lenguajes WHERE edad < 30 ORDER BY length(lenguaje) DESC LIMIT 1;


-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
SELECT email FROM usuarios_lenguajes WHERE lenguaje IS NOT null;


-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
SELECT count(nombre) FROM usuarios_lenguajes WHERE apellido LIKE 'G%';


-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
SELECT nombre, apellido FROM usuarios_lenguajes WHERE lenguaje LIKE 'J%' ORDER BY length(lenguaje) ASC LIMIT 1;


-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
SELECT nombre, apellido FROM usuarios_lenguajes WHERE edad > 30 ORDER BY length(lenguaje) DESC LIMIT 1;


-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
SELECT * FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL ORDER BY lenguaje ASC;


-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
SELECT count(nombre) FROM usuarios_lenguajes WHERE edad BETWEEN 20 AND 25 AND lenguaje IS NOT NULL;


-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
SELECT * FROM usuarios_lenguajes WHERE lenguaje != 'SQL';


-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
SELECT length(lenguaje) FROM usuarios_lenguajes WHERE edad >= 30 LIMIT 1;


-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
SELECT * FROM usuarios_lenguajes WHERE avg(edad);

-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
SELECT count(nombre) FROM usuarios_lenguajes WHERE lenguaje LIKE '%Script%';


-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
SELECT * FROM usuarios_lenguajes WHERE nombre = (SELECT length(nombre) FROM usuarios_lenguajes) AND lenguaje IS NOT NULL ;


-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
-- Tu respuesta aquí


-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
-- Tu respuesta aquí


-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
-- Tu respuesta aquí

