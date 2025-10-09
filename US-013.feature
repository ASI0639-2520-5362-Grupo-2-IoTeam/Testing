Feature: Gestión de sesión
  Como usuario,
  Quiero que mi sesión permanezca activa hasta que cierre sesión
  O se cierre automáticamente tras cierto tiempo de inactividad.

  Scenario: Cierre manual
    Given que un usuario está autenticado
    When selecciona “Cerrar sesión”
    Then el sistema termina su sesión
    And vuelve a la pantalla de login

  Scenario: Expiración automática
    Given que un usuario no interactúa con la aplicación durante X minutos
    When se cumple ese tiempo
    Then el sistema cierra automáticamente la sesión por seguridad
