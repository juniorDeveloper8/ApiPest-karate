README - Pruebas de Servicios REST con Karate

📌 Descripción del proyecto:
Este proyecto automatiza el flujo completo de gestión de mascotas utilizando el framework Karate, aplicando pruebas sobre la API pública Petstore.
Los escenarios cubren operaciones CRUD básicas para validar el comportamiento del servicio REST.

🛠 Requisitos previos:
1. Java 21 instalado y configurado
2. Maven configurado en el sistema
3. IDE recomendado: IntelliJ IDEA
4. Conexión a internet para descargar dependencias

📁 Estructura del proyecto:
- src/test/java: contiene el runner de Karate (PetsRunner.java)
- src/test/resources: contiene el archivo de pruebas CrudApiPets.feature
- target/karate-reports: carpeta donde se generan los reportes HTML al finalizar la ejecución

🚀 Pasos para ejecutar las pruebas:

1. Clonar el repositorio desde GitHub
2. Abrir el proyecto en IntelliJ IDEA
3. Verificar que el archivo `CrudApiPets.feature` se encuentra en `src/test/resources`
4. Ejecutar el archivo `PetsRunner.java` ubicado en `src/test/java/org/sofka`
   - Este runner ejecuta los escenarios etiquetados con `@TestPets`
5. Al finalizar la ejecución, abrir el reporte HTML en:
   `target/karate-reports/karate-summary.html`

🧪 Escenarios automatizados:

- Crear una mascota en la tienda (POST /pet)
- Consultar una mascota por ID (GET /pet/{id})
- Actualizar nombre y estado de una mascota (PUT /pet)
- Consultar mascotas por estado (GET /pet/findByStatus)

✅ Cada escenario valida:
- Formato y contenido de las entradas (JSON)
- Código de respuesta HTTP esperado
- Contenido del cuerpo de respuesta
- Uso de variables para capturar y reutilizar datos entre pasos

📄 Autor:
Este proyecto fue desarrollado como parte de un ejercicio técnico de automatización de servicios REST utilizando Karate.
