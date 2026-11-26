-- Esquema de la base de datos de flujodeviajes (MarTransport)
-- Uso: mysql -u root < schema.sql
CREATE DATABASE IF NOT EXISTS flujoviajes CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE flujoviajes;

CREATE TABLE IF NOT EXISTS usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario VARCHAR(100) NOT NULL UNIQUE,
  contrasena VARCHAR(255) NOT NULL,
  rango ENUM('transporte','admin') NOT NULL DEFAULT 'transporte',
  img VARCHAR(255) NULL
);

CREATE TABLE IF NOT EXISTS rutas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario VARCHAR(100) NOT NULL,
  origen VARCHAR(150) NOT NULL,
  fecha_origen DATE NOT NULL,
  hora_salida TIME NOT NULL,
  destino VARCHAR(150) NOT NULL,
  fecha_destino DATE NOT NULL,
  hora_llegada TIME NOT NULL,
  numero_barco VARCHAR(50) NOT NULL,
  tipo_embarcacion VARCHAR(50) NOT NULL,
  INDEX (usuario)
);

-- Usuarios de prueba (cambia las contraseñas antes de usarlo en serio)
INSERT IGNORE INTO usuarios (usuario, contrasena, rango) VALUES
  ('admin', 'admin123', 'admin'),
  ('transporte', 'transporte123', 'transporte');
