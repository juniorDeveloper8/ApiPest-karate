# 🐾 PetStore API Testing with Karate Framework

Este proyecto automatiza el flujo completo de pruebas sobre la API pública de [PetStore Swagger](https://petstore.swagger.io/) utilizando el framework **Karate**. Se validan operaciones CRUD básicas para la gestión de mascotas, incluyendo creación, consulta, actualización y búsqueda por estatus.

## 📌 Objetivo

Validar el comportamiento de los servicios REST expuestos por PetStore mediante pruebas automatizadas que cubren:

- Añadir una mascota a la tienda (`POST /pet`)
- Consultar la mascota por ID (`GET /pet/{id}`)
- Actualizar el nombre y estatus de la mascota (`PUT /pet`)
- Consultar mascotas por estatus (`GET /pet/findByStatus`)

## 🛠️ Tecnologías utilizadas

- [Karate Framework](https://github.com/karatelabs/karate) v1.5.1
- Java 21
- Maven
- IntelliJ IDEA (recomendado)
- PetStore Swagger API

## 🚀 Instrucciones de ejecución

### 1. Clonar el repositorio

```bash
git clone https://github.com/juniorDeveloper8/ApiPest-karate.git
cd TestApiPets

# ingresar al proyecto y abrir una terminal dentro 
mvn test
```
- Ejecucion visual o ejecutar directamente el archivo PetsRunner.java

## Ver resultados

- Al finalizar la ejecución, abrir el reporte HTML en:

```
target/karate-reports/karate-summary.html

```