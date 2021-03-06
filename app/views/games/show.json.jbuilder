json.game do
  json.id @game.id
  json.client_id @game.client_id
  json.description @game.description
  json.team_id @game.team_id
  json.status_id @game.status_id
  json.start @game.start
  json.game_type_id @game.game_type_id
  json.client_id @game.client_id

  json.client do
    json.name @game.client.name
  end

  json.status do
    json.description @game.status.description
    json.rank @game.status.rank
  end

  json.game_type do
    json.description @game.game_type.description
  end

  json.questions @game.questions do |question|
      json.id question.id
      json.game_id question.game_id
      json.description question.description
      json.is_active question.is_active
      json.status question.status
      
      json.selections question.selections do |selection|
        json.id selection.id
        json.question_id selection.question_id
        json.text selection.text
        json.is_right selection.is_right
      end
  end

  

  json.players @game.players do |player|
    json.id  player.id
    json.first_name  player.first_name
    json.last_name  player.last_name
    json.address player.address.description
  end

 json.cards @game.cards do |card|
   json.player card.player.id
   json.first_name card.player.first_name
   json.last_name card.player.last_name
   json.address card.player.address.description
   json.is_winner card.sweep.is_winner
   json.win_status card.sweep.win_status
  end

end