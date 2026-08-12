# flujodeviajes (MarTransport)

Sistema de gestión de rutas de transporte marítimo con login y dos roles: transporte y administrador, cada uno con su propio panel.

## Stack
PHP · MySQL · Sesiones · CRUD (alta, consulta, edición y baja de rutas) con consultas preparadas.

## Correr en local
Requiere PHP + MySQL (XAMPP recomendado). Las credenciales de conexión se leen de variables de entorno (`DB_USER`, `DB_PASSWORD`) en vez de estar hardcodeadas — configúralas antes de levantar el servidor.

Crea la base `flujoviajes` con una tabla `usuarios` (columnas: id, usuario, contrasena, rango) y una tabla de rutas — ver `funciones/` para el detalle de las queries.

---
Parte del [portafolio de Ronaldo Solano](https://ronaldou24.github.io).
