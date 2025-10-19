EJERCICIO DE PRUEBAS DE SERVICIOS REST - PETSTORE API

Este proyecto automatiza el flujo completo de gestión de mascotas utilizando el framework Karate.

REQUISITOS PREVIOS:
1. Tener instalado Java 21
2. Tener configurado Maven
3. IDE recomendado: IntelliJ IDEA
4. Acceso a internet para descargar dependencias

ESTRUCTURA DEL PROYECTO:
- src/test/java: contiene el runner de Karate
- src/test/resources: contiene el archivo CrudApiPets.feature con los escenarios de prueba
- target/karate-reports: carpeta donde se generan los reportes HTML

PASOS DE EJECUCIÓN:

1. Clonar el repositorio desde GitHub
2. Abrir el proyecto en IntelliJ IDEA
3. Verificar que el archivo CrudApiPets.feature se encuentra en src/test/resources
4. Ejecutar el archivo PetsRunner.java ubicado en src/test/java/org.sofka
   - Este runner ejecuta los escenarios etiquetados con @TestPets
5. Al finalizar la ejecución, abrir el reporte en:
   target/karate-reports/karate-summary.html

ESCENARIOS AUTOMATIZADOS:

- Añadir una mascota a la tienda (POST /pet)
- Consultar la mascota por ID (GET /pet/{id})
- Actualizar el nombre y estatus de la mascota (PUT /pet)
- Consultar mascotas por estatus (GET /pet/findByStatus)

Cada escenario valida:
- Entradas enviadas en formato JSON
- Código de respuesta HTTP
- Contenido del cuerpo de respuesta
- Variables utilizadas para capturar y reutilizar datos

