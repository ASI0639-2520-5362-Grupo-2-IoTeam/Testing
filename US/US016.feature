Feature: Alertas esenciales de riego
  Como persona ocupada
  Quiero recibir solo notificaciones críticas cuando mis plantas necesiten riego urgente
  Para actuar rápidamente sin saturación de alertas

  Background:
    Given que el usuario tiene plantas registradas con parámetros configurados

  Scenario: Alerta solo en umbral crítico
    Given que la humedad del suelo baja por debajo del nivel de emergencia
    When el sistema detecta riesgo inminente para la planta
    Then envía una notificación push clara y urgente
    And no notifica por fluctuaciones menores dentro de rangos seguros