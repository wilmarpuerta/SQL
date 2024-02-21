CREATE TABLE estudiantes (
    id INT PRIMARY KEY AUTO_INCREMENT, nombres VARCHAR(45), apellidos VARCHAR(45), correo VARCHAR(150) UNIQUE, fecha_nacimiento DATE
);

INSERT INTO
    estudiantes (
        nombres, apellidos, correo, fecha_nacimiento, edad
    )
VALUES (
        'Andres', 'Herrera', 'test8@gmail.com', '2023-5-02', 15
    );

DROP TABLE estudiantes

SELECT correo FROM estudiantes

SELECT * FROM estudiantes

DELETE FROM estudiantes WHERE correo = 'test1@gmail.com'

TRUNCATE TABLE estudiantes

ALTER TABLE estudiantes COLUMN edad INT

DELETE nombre FROM estudiantes

SELECT *
FROM estudiantes
WHERE
    edad = (
        SELECT MIN(edad)
        FROM estudiantes
    )

SELECT * FROM estudiantes WHERE edad > 20 AND edad < 40

SELECT COUNT(id) as cantidad_estudiantes FROM estudiantes

SELECT AVG(edad) FROM estudiantes

SELECT *
FROM estudiantes
WHERE
    nombres like('m%')
    OR nombres like('a%');