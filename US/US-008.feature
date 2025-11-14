Feature: Gestión segura de sesión
  Como usuario
  Quiero que mi sesión se maneje de forma segura
  Para proteger mis datos contra accesos no autorizados por inactividad

  Rule: Los tokens deben invalidarse al cerrar sesión o por inactividad

  Scenario: Cierre manual seguro
    Given un usuario autenticado inicia el proceso de cierre de sesión
    When selecciona la opción "Cerrar sesión"
    Then las tokens de sesión se invalidan en el servidor
    And el usuario es redirigido a la pantalla de login
    And se muestra mensaje de confirmación "Sesión finalizada con éxito"

  Scenario: Protección automática por inactividad
    Given un usuario permanece inactivo durante 30 minutos
    When el sistema detecta inactividad prolongada
    Then la sesión se cierra automáticamente
    And el usuario ve el mensaje "Sesión cerrada por seguridad"
