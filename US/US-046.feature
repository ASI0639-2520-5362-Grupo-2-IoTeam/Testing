Feature: Selección flexible de planes
  Como usuario
  Quiero elegir diferentes modelos de pago
  Para ajustarlos a mis necesidades

  Scenario: Selección de plan básico de pago único
    Given un usuario desea evitar pagos recurrentes
    When selecciona el plan "Básico"
    Then obtiene acceso a funciones esenciales sin pagos posteriores

  Scenario: Suscripción premium con beneficios avanzados
    Given un usuario desea características avanzadas
    When selecciona plan mensual o anual
    Then desbloquea diagnósticos y reportes avanzados inmediatamente
