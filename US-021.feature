Feature: Visualización de datos en tiempo real
  Como usuario,
  Quiero visualizar las lecturas de mis sensores en tiempo real
  Para monitorear el estado actual de mis plantas.

  Scenario: Datos actualizados
    Given que un usuario tiene un dispositivo conectado
    When el sensor envía datos cada cierto intervalo
    Then la app muestra la información actualizada en gráficos
    And los valores cambian dinámicamente sin necesidad de recargar la página
