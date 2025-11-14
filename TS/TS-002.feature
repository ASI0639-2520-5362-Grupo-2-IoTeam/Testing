Feature: Registro de usuarios con validación segura
  Como desarrollador frontend
  Quiero permitir que usuarios se registren con validación segura
  Para garantizar integridad y confidencialidad de datos

  Scenario: Registro exitoso
    Given un usuario nuevo con datos válidos
    When envía solicitud POST /auth/register
    Then el sistema crea el usuario
    And responde con 201 Created

  Scenario: Datos inválidos o incompletos
    Given que el usuario omite campos requeridos
    When intenta registrarse
    Then responde con 400 Bad Request
    And retorna errores de validación

  Rule: Reglas de seguridad
    - Contraseña mínima 8 caracteres, una mayúscula, un número y un símbolo
    - El email debe ser único y verificado
