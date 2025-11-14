Feature: Autenticación con JWT
  Como desarrollador frontend
  Quiero autenticar usuarios mediante email y contraseña
  Para obtener un token JWT que permita acceder a recursos protegidos

  Background:
    Given que el endpoint POST /auth/login está operativo

  Scenario: Inicio de sesión exitoso
    Given un usuario con credenciales válidas
    When envía una solicitud POST /auth/login
    Then el sistema responde con 200 OK
    And retorna un token JWT válido

  Scenario: Credenciales inválidas
    Given un usuario con credenciales incorrectas
    When intenta iniciar sesión
    Then el sistema responde con 401 Unauthorized
    And muestra un mensaje de error

  Rule: Expiración y seguridad
    - El token expira a las 24 horas
    - Después de 3 intentos fallidos consecutivos, se bloquea el acceso por 15 minutos
