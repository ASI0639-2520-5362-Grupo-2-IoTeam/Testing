Feature: Registro de usuario
  Como visitante,
  Quiero registrarme con mis datos básicos (nombre, email, contraseña)
  Para crear una cuenta en la aplicación.

  Scenario: Registro exitoso
    Given que un visitante accede al formulario de registro
    When completa todos los campos obligatorios y envía el formulario
    Then el sistema crea la cuenta y redirige al inicio
    And se muestra un mensaje de bienvenida

  Scenario: Validación de datos
    Given que un visitante ingresa un email inválido
    When intenta registrarse
    Then el sistema muestra un mensaje de error
    And no permite continuar
