Feature: Reporte semanal
  Como usuario,
  Quiero recibir un reporte semanal del estado de mis plantas
  Para revisar su progreso y cuidados realizados.

  Scenario: Generación automática
    Given que un usuario tiene plantas registradas
    When se cumple el final de la semana
    Then el sistema genera un reporte semanal
    And este se envía al correo electrónico del usuario
    And queda disponible en la app
