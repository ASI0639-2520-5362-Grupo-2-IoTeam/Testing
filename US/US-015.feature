Feature: Visualización unificada de plantas
  Como usuario
  Quiero ver todas mis plantas en una vista consolidada
  Para revisar rápidamente su estado general

  Rule: Las plantas deben ordenarse por prioridad de atención

  Scenario: Lista principal organizada
    Given un usuario tiene múltiples plantas registradas
    When accede a "Mis plantas"
    Then visualiza una lista con nombre, especie, ubicación y estado de salud
    And puede identificar las plantas que requieren atención prioritaria

  Scenario: Visualización responsive
    Given el usuario accede desde dispositivo móvil
    When navega por la vista de plantas
    Then la interfaz se adapta al tamaño de pantalla
    And todas las funciones permanecen accesibles
