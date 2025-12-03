Feature: Comentarios en comunidad
  Como desarrollador backend
  Quiero permitir que los usuarios publiquen, editen y eliminen comentarios en publicaciones
  Para habilitar interacciones claras y moderadas dentro de la comunidad

  Background:
    Given que el usuario está autenticado
    And la publicación existe en la comunidad

  Scenario: Publicación exitosa de comentario
    Given que un usuario autenticado comenta en una publicación
    When envía su texto
    Then el sistema guarda el comentario
    And responde con código 201 Created