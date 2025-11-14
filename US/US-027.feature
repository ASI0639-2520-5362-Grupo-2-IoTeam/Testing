Feature: Unirse a la comunidad
  Como usuario,
  Quiero unirme a la comunidad de la app
  Para interactuar con otros cuidadores de plantas.

  Scenario: Registro en la comunidad
    Given que un usuario tiene una cuenta activa
    When accede a la sección de comunidad
    Then puede unirse presionando un botón de “Unirse”
    And recibe confirmación de que ya forma parte de la comunidad
