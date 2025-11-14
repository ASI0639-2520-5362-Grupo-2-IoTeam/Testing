Feature: Cancelación flexible de suscripciones
  Como usuario
  Quiero poder cancelar una suscripción en cualquier momento
  Para tener control total de mis gastos

  Scenario: Cancelación inmediata manteniendo acceso activo
    Given el usuario decide cancelar su suscripción actual
    When confirma la acción de cancelación
    Then se detienen futuros cobros
    And mantiene acceso premium hasta el final del ciclo pagado

  Scenario: Confirmación formal de cancelación
    Given el usuario finaliza el proceso de cancelación
    When el sistema procesa la solicitud
    Then se envía confirmación por correo
    And se muestra fecha de expiración en pantalla
