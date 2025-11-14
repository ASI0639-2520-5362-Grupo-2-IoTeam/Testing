Feature: Edición de planta
  Como usuario,
  Quiero editar la información de una planta ya registrada
  Para mantener sus datos actualizados.

  Scenario: Edición exitosa
    Given que un usuario tiene plantas registradas
    When modifica la especie y guarda los cambios
    Then la información actualizada se guarda en la base de datos
    And la nueva información se refleja inmediatamente en la lista
