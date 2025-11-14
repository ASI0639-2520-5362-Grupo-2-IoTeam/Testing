Feature: Secciones informativas
  Como visitante,
  Quiero ver secciones claras con la descripción del producto, beneficios y cómo funciona
  Para entender el valor de la aplicación.

  Scenario: Visualización de secciones
    Given que un visitante se encuentra en la landing page
    When hace scroll hacia abajo
    Then visualiza las secciones de descripción, beneficios y funcionamiento
    And cada sección incluye texto e imagen ilustrativa
