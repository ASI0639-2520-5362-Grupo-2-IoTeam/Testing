Feature: Autenticación externa segura
  Como usuario
  Quiero autenticarme mediante Google
  Para acceder rápidamente manteniendo estándares de seguridad

  Rule: El sistema no debe revelar información técnica en errores

  Scenario: Autenticación OAuth2 exitosa
    Given el usuario selecciona "Iniciar sesión con Google"
    When completa el flujo de autorización correctamente
    Then el sistema crea o recupera la cuenta asociada
    And se establece una sesión segura

  Scenario: Manejo seguro ante error de autenticación
    Given el usuario inicia autenticación con Google
    When ocurre un fallo en el flujo OAuth2
    Then el sistema muestra un mensaje genérico "No se pudo completar la autenticación"
    And permite intentar nuevamente o usar login tradicional
