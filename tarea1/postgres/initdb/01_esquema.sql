-- Esquema de prueba: proyectos y sus tareas
CREATE TABLE proyecto (
    id            SERIAL PRIMARY KEY,
    nombre        VARCHAR(100) NOT NULL,
    fecha_inicio  DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE tarea (
    id           SERIAL PRIMARY KEY,
    proyecto_id  INTEGER NOT NULL REFERENCES proyecto(id),
    titulo       VARCHAR(150) NOT NULL,
    estado       VARCHAR(20) NOT NULL DEFAULT 'pendiente'
);

INSERT INTO proyecto (nombre) VALUES
    ('Tarea 1 - Administracion de Proyectos'),
    ('Chatbot de prueba');

INSERT INTO tarea (proyecto_id, titulo, estado) VALUES
    (1, 'Crear repositorio en GitHub', 'terminada'),
    (1, 'Levantar PostgreSQL 17', 'terminada'),
    (1, 'Actualizar a PostgreSQL 18', 'en curso'),
    (2, 'Definir alcance', 'pendiente');