Feature: Registro de planta
  Como usuario,
  Quiero registrar una planta en la aplicación
  Para llevar el control de su cuidado.

  Scenario: Registro exitoso
    Given que un usuario está en el formulario de registro de planta
    When completa nombre, especie y ubicación obligatorios
    Then la planta se guarda en la base de datos
    And aparece en la lista de plantas del usuario

  Scenario: Validación de campos
    Given que un usuario deja en blanco los campos obligatorios
    When intenta guardar la planta
    Then el sistema muestra un mensaje de error
    And no permite guardar hasta completar los campos requeridos
