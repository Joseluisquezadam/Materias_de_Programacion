-- Insertar los primeros 25 registros
INSERT INTO Estudiante (nombre, apellido, correo, departamento_id) VALUES
  ('Nombre1', 'Apellido1', 'nombre1.apellido1@example.com', 1),
  ('Nombre2', 'Apellido2', 'nombre2.apellido2@example.com', 2),
  -- ...
  ('Nombre25', 'Apellido25', 'nombre25.apellido25@example.com', 25);

-- Insertar los siguientes 25 registros
INSERT INTO Estudiante (nombre, apellido, correo, departamento_id) VALUES
  ('Nombre26', 'Apellido26', 'nombre26.apellido26@example.com', 1),
  ('Nombre27', 'Apellido27', 'nombre27.apellido27@example.com', 2),
  -- ...
  ('Nombre50', 'Apellido50', 'nombre50.apellido50@example.com', 25);

-- Repetir este proceso hasta completar los 100 registros
-- Se hace asi para ocupar bloques mas pequenos