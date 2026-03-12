# Polimet – API REST con Spring Boot

Además de modelar la base de datos y sus respectivas reglas con SQL, se solicita desarrollar una API REST en Java utilizando Spring Boot, que permita gestionar las entidades del sistema de forma dinámica y probar su funcionamiento desde el frontend. Las pruebas iniciales pueden realizarse utilizando herramientas como Postman.

## Rutas de la API

### a. Registro de usuarios

**Ruta**

POST /api/usuarios

**Función**

Registrar un nuevo usuario con su perfil y nivel de membresía.

### b. Consulta del contenido del museo

**Ruta**

GET /api/home

**Función**

Muestra información general del museo, incluyendo:

- Descripción del museo  
- Horarios  
- Fotos  
- Eventos promocionados  

### c. Consultar qué hay en cada piso

**Ruta**

GET /api/pisos

**Función**

Devuelve los pisos del museo, las salas incluidas en cada uno y las restricciones según el tipo de membresía.

### d. Ver eventos especiales del museo

**Ruta**

GET /api/eventos

**Función**

Muestra la lista de próximos eventos especiales, como por ejemplo "Noche en el museo", excursiones temáticas u otros eventos promocionales.

### e. Sacar ticket para visita

**Ruta**

POST /api/tickets/reservar

**Función**

Permite al usuario reservar tickets indicando día, hora y cantidad de personas. El sistema verifica la disponibilidad antes de confirmar la reserva.

### f. Obtener top 10 obras más valoradas en fechas dadas

**Ruta**

GET /api/estadisticas/top-obras?desde=YYYY-MM-DD&hasta=YYYY-MM-DD

**Función**

Devuelve el top 10 de obras mejor calificadas dentro del rango de fechas especificado.

### g. Filtrar obras

**Ruta**

GET /api/obras?ubicacion=x&epoca=y&nombre=z&popularidad=alta

**Función**

Lista las obras según filtros combinables:

- Ubicación  
- Época  
- Nombre  
- Nivel de popularidad  

### h. Votar obras tras la visita

**Ruta**

POST /api/obras/{id}/votar

**Función**

Permite a los usuarios calificar una obra que hayan visto durante su visita. Esta acción actualiza el nivel de popularidad de la obra.

## Pasos para ejecutar el sistema

### 1. Instalar Java

Instalar JDK (Java Development Kit) versión 17.

### 2. Instalar MySQL y cargar la base de datos

El sistema espera que la base de datos esté creada previamente. Para ello:

1. Instalar MySQL.  
2. Importar la base de datos incluida en el proyecto utilizando el archivo:

db_polimet_24nov.sql

Este archivo se encuentra en la carpeta:

/sql

### 3. Abrir el proyecto

Abrir el proyecto en un entorno de desarrollo como:

- IntelliJ IDEA  
- Eclipse  
- Visual Studio Code  

Seleccionar la carpeta raíz del proyecto.

### 4. Descargar dependencias

El proyecto utiliza Gradle, por lo que al abrirlo se descargarán automáticamente las librerías necesarias. Este proceso puede tardar algunos minutos la primera vez.

### 5. Configurar la conexión a la base de datos

Abrir el archivo:

src/main/resources/application.properties

Configurar los datos de conexión a la base de datos:

- URL de la base de datos  
- Usuario  
- Contraseña  

### 6. Ejecutar el proyecto

Se puede ejecutar de dos maneras.

Desde el IDE, ejecutando la clase principal del proyecto.

O desde la terminal con el siguiente comando:

gradlew bootRun

### 7. Verificar que el servidor esté funcionando

Si todo funciona correctamente, en la consola aparecerá el mensaje:

Tomcat started on port 8080

Esto indica que el backend está corriendo en:

http://localhost:8080

### 8. Probar los endpoints

Los endpoints pueden probarse utilizando herramientas como Postman.
