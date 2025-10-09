Feature: Gráficos históricos
  Como usuario,
  Quiero ver gráficos históricos de temperatura, humedad y luz
  Para analizar tendencias en el cuidado de mis plantas.

  Scenario: Selección de rango
    Given que un usuario accede a la sección de reportes
    When selecciona un rango de fechas
    Then se muestran gráficos con los datos históricos
    And la información está organizada por planta y tipo de sensor
