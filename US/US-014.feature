Feature: Configuración de parámetros básicos
  Como usuario
  Quiero definir parámetros esenciales para cada planta
  Para personalizar el monitoreo según sus necesidades específicas

  Background:
    Given que el usuario está autenticado
    And tiene una planta registrada en su perfil

  Scenario: Configuración de umbrales básicos
    Given que un usuario accede a la configuración de una planta
    When define niveles de humedad mínimos y máximos recomendados
    Then los parámetros se guardan asociados al perfil de la planta
    And el sistema los utiliza para generar alertas personalizadas

  Scenario: Aplicación de perfiles predefinidos
    Given que un usuario selecciona "Suculenta" como especie
    When el sistema sugiere parámetros automáticos para esa especie
    Then el usuario puede aceptar la configuración recomendada
    And los umbrales se aplican automáticamente sin configuración manual