Feature: Reacciones y métricas comunitarias
  Como desarrollador backend
  Quiero permitir que los usuarios reaccionen a publicaciones
  Para que el sistema contabilice métricas de interacción en la comunidad

  Background:
    Given que el usuario está autenticado
    And la publicación existe en la comunidad

  Scenario: Reacción válida
    Given un usuario autenticado
    When selecciona una reacción
    Then el sistema guarda la reacción
    And actualiza el contador total de interacciones

  Scenario: Reacción repetida
    Given un usuario que ya reaccionó anteriormente
    When intenta repetir la misma reacción
    Then el sistema ignora la acción o elimina la reacción previa según la configuración definida