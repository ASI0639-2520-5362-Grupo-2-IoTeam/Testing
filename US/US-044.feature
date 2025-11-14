Feature: Actualización de datos en tiempo real
  Como usuario
  Quiero ver lecturas IoT actualizadas sin recargar la página
  Para monitorear el estado de mis plantas instantáneamente

  Rule: Los dispositivos envían datos cada 30 segundos

  Scenario: Actualización continua de variables
    Given un dispositivo está transmitiendo datos activos
    When el usuario visualiza el dashboard de una planta
    Then los valores de humedad, temperatura y luz se actualizan cada 30 segundos
    And los cambios se muestran sin recargar la página

  Scenario: Indicador de estado de conexión
    Given el dispositivo está operativo
    When el usuario revisa el estado del sensor
    Then visualiza indicador "Conectado" y tiempo de última lectura
