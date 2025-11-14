Feature: Gestión de planes de suscripción
  Como desarrollador backend
  Quiero gestionar registro y cancelación de suscripciones
  Para habilitar o limitar funciones premium

  Scenario: Alta de suscripción
    Given un usuario nuevo
    When selecciona un plan premium
    Then el sistema registra la suscripción
    And habilita funciones avanzadas

  Scenario: Cancelación de suscripción
    Given un usuario premium activo
    When cancela su plan
    Then los beneficios se mantienen hasta fin del período pagado
