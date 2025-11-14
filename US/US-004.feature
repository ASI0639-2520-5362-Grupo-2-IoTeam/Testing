Feature: Testimonios / comunidad
  Como visitante,
  Quiero visualizar opiniones de otros usuarios o ejemplos de uso
  Para ganar confianza en el producto.

  Scenario: Visualización de testimonios
    Given que un visitante se encuentra en la sección de testimonios
    When la página carga esa parte
    Then se muestran al menos 2 testimonios con nombre e imagen
    And el diseño mantiene la legibilidad en web y móvil
