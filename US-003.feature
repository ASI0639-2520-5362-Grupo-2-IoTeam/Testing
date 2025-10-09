Feature: Call to Action (CTA)
  Como visitante,
  Quiero botones de acción como “Regístrate” o “Compra ahora”
  Para iniciar mi relación con el producto.

  Scenario: CTA funcional
    Given que un visitante ve un botón de registro en la landing page
    When hace clic en el botón
    Then es redirigido a la página de registro o compra
    And la acción ocurre sin errores
