Feature: Inicio de sesión
  Como usuario registrado,
  Quiero iniciar sesión con mi email y contraseña
  Para acceder a mis plantas y dispositivos.

  Scenario: Inicio exitoso
    Given que un usuario está registrado
    When ingresa email y contraseña válidos
    Then el sistema lo autentica y lo redirige a su dashboard
    And su sesión queda activa hasta que cierre sesión

  Scenario: Error de credenciales
    Given que un usuario ingresa contraseña incorrecta
    When intenta iniciar sesión
    Then el sistema muestra mensaje de “Credenciales inválidas”
