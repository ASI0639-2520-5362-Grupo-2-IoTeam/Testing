Feature: Ver feed de comunidad
  Como usuario,
  Quiero ver un feed con publicaciones de la comunidad
  Para conocer consejos y experiencias.

  Scenario: Carga de feed
    Given que un usuario ha ingresado a la comunidad
    When la página carga
    Then se muestran publicaciones recientes de otros usuarios
    And el feed se actualiza al hacer scroll o refrescar
