Feature: Recibir feedback de la comunidad
  Como usuario,
  Quiero recibir feedback de la comunidad sobre mis publicaciones
  Para aprender mejores prácticas.

  Scenario: Comentarios en publicaciones
    Given que un usuario publica un consejo o foto
    When otros usuarios comentan o reaccionan
    Then recibe notificaciones del feedback
    And puede responder a los comentarios
