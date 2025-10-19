@TestPets

Feature: Flujo completo de gestión de mascotas en PetStore

  Background:
    * url 'https://petstore.swagger.io/v2/'
    * def petId = null
    * def initialPet =
    """
    {
      "id": 0,
      "category": {
        "id": 0,
        "name": "string"
      },
      "name": "doggie",
      "photoUrls": [
        "string"
      ],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "available"
    }
    """

  Scenario: Añadir una mascota a la tienda
    Given path 'pet'
    And request initialPet
    When method post
    Then status 200
    And match response.name == 'doggie'
    And match response.status == 'available'
    * def petId = response.id

  Scenario: Añadir una mascota a la tienda
    Given path 'pet'
    And request initialPet
    When method post
    Then status 200
    And match response.name == 'doggie'
    And match response.status == 'available'
    * def petId = response.id

  Scenario: Actualizar el nombre y estatus de la mascota
    * def updatedPet =
    """
    {
      "id": #(petId),
      "category": {
        "id": 0,
        "name": "perro"
      },
      "name": "Max",
      "photoUrls": [
        "string"
      ],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "sold"
    }
    """
    Given path 'pet'
    And request updatedPet
    When method put
    Then status 200
    And match response.name == 'Max'
    And match response.status == 'sold'

  Scenario: Consultar la mascota modificada por estatus
    Given path 'pet/findByStatus'
    And param status = 'sold'
    When method get
    Then status 200
    * def hasKingKongSold = response.filter(p => p.name == 'King Kong' && p.status == 'sold').length > 0
    * match hasKingKongSold == true
