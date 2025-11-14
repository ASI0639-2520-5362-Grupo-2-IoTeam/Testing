Feature: Recuperación de contraseña
  Como usuario,
  Quiero recuperar mi contraseña si la olvido
  Para acceder nuevamente a mi cuenta.

  Scenario: Solicitud de recuperación
    Given que un usuario está en la pantalla de login
    When selecciona “Olvidé mi contraseña” e ingresa su email
    Then el sistema envía un correo con enlace de recuperación

  Scenario: Restablecimiento exitoso
    Given que un usuario recibe el correo
    When hace clic en el enlace y define una nueva contraseña
    Then el sistema actualiza su contraseña
    And puede iniciar sesión con la nueva credencial
