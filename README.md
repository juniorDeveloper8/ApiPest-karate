# 🐾 PetStore API Testing with Karate Framework

Este repositorio contiene pruebas automatizadas para la gestión completa de mascotas utilizando el framework [Karate](https://github.com/karatelabs/karate) sobre la API pública [PetStore Swagger](https://petstore.swagger.io/).

El objetivo principal es validar el comportamiento del endpoint bajo condiciones funcionales, cubriendo operaciones CRUD:

- ➕ Crear mascota (POST /pet)
- 🔍 Consultar mascota por ID (GET /pet/{id})
- ✏️ Actualizar mascota (PUT /pet)
- 📋 Consultar mascotas por estado (GET /pet/findByStatus)

---

## ⚙️ Requisitos

- ✅ Java 21
- 🧰 Maven configurado
- 💻 IDE recomendado: IntelliJ IDEA
- 🌐 Conexión a internet activa

---

## 📁 Estructura del proyecto

```
TestApiPets/
├── .mvn/                          
├── evidence/                     → Contiene el reporte html de la ejecución
│     └── karate-summary.html                     
├── src/
│   └── test/
│       ├── java/
│       │   └── sofka/
│       │       └── PetsRunner.java      → Clasepara ejecutar las pruebas
│       └── resources/
│           └── ApiPets.feature          
├── .gitignore                   
├── conclusiones.txt             → Análisis técnico de los resultados obtenidos
├── logback-test.xml            
├── pom.xml                      
├── readme.txt                   → Instrucciones de instalación y ejecución
└── README.md                    
```