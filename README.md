# flujodeviajes (MarTransport)

Sistema de gestión de rutas de transporte marítimo con login y dos roles: transporte y administrador, cada uno con su propio panel.

## Stack
PHP · MySQL · Sesiones · CRUD (alta, consulta, edición y baja de rutas) con consultas preparadas.

## Correr en local
Requiere PHP 8 (con la extensión `mysqli`) y MySQL/MariaDB. XAMPP sirve.

1. Crea la base, las tablas y los usuarios de prueba:
   ```bash
   mysql -u root < schema.sql
   ```
2. Si tu MySQL tiene contraseña, defínela como variable de entorno: `DB_USER`, `DB_PASSWORD`.
3. Levanta el servidor desde la raíz del proyecto:
   ```bash
   php -S localhost:8080
   ```
4. Entra a http://localhost:8080/login.php

| Usuario | Contraseña | Panel |
|---|---|---|
| `admin` | `admin123` | Administrador |
| `transporte` | `transporte123` | Transporte |

> ⚠️ Cambia esas contraseñas antes de usarlo con datos reales. Hoy se guardan en texto plano.

---
Parte del [portafolio de Ronaldo Solano](https://ronaldou24.github.io).
