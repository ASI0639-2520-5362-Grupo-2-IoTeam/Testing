Feature: Compartir experiencias de cuidado
  Como usuario
  Quiero compartir mis aprendizajes y técnicas de cuidado
  Para contribuir al conocimiento colectivo y ayudar a otros cuidadores

  Background:
    Given que el usuario desea publicar contenido en la comunidad

  Scenario: Publicación de consejos estructurados
    Given que un usuario quiere compartir un consejo
    When utiliza el formulario de publicación guiada
    Then puede categorizar por tipo de planta, problema y solución
    And otros usuarios pueden aplicar fácilmente sus recomendaciones

  Scenario: Validación comunitaria
    Given que un usuario publica un consejo
    When otros usuarios aplican la recomendación exitosamente
    Then recibe retroalimentación positiva y reputación
    And el consejo gana visibilidad en la comunidad