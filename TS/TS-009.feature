Feature: Dashboard de estado de plantas
  Como desarrollador frontend
  Quiero mostrar estado general de plantas
  Para visualizar métricas actuales y alertas

  Scenario: Datos disponibles
    Given un usuario con plantas registradas
    When accede a su dashboard
    Then visualiza todas las plantas y su estado actual

  Scenario: Sin plantas registradas
    Given un usuario nuevo
    When abre el panel
    Then el sistema muestra "No tienes plantas registradas aún"
