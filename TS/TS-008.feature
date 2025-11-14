Feature: Sistema de manejo de plantas
  Como desarrollador backend
  Quiero permitir registrar, editar, listar y eliminar plantas
  Para administrar plantas asociadas a usuarios

  Scenario: Creación exitosa
    Given datos válidos de una planta
    When el usuario realiza POST /plants
    Then el sistema responde con 201 Created

  Scenario: Eliminación exitosa
    Given un ID válido
    When se solicita eliminar la planta
    Then el sistema responde con 200 OK
    And retorna mensaje de confirmación

  Rule:
    - Usuarios básicos: máximo 5 plantas
    - Usuarios premium: hasta 50 plantas
