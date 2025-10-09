Feature: Acceso a la Landing Page
  Como visitante,
  Quiero acceder a una landing page desde cualquier navegador
  Para informarme sobre la aplicación y el dispositivo.

  Scenario: Acceso correcto
    Given que un visitante accede a la URL de la aplicación
    When carga la página desde un navegador compatible
    Then la landing page se muestra correctamente
    And el contenido principal es visible en menos de 3 segundos

  Scenario: Responsividad
    Given que un visitante accede desde un dispositivo móvil
    When carga la landing page
    Then la página se adapta al tamaño de pantalla
    And los elementos principales son accesibles sin perder funcionalidad
