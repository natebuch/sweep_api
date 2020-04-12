json.games @games do |game| 
  json.id game.id
  json.client_id game.client_id
  json.description game.description
  json.team_id game.team_id
  json.status_id game.status_id
  json.start game.start
  json.game_type_id game.game_type_id
  json.client_id game.client_id
  
  json.client do
    json.name game.client.name
  end

  json.game_type do
    json.description game.game_type.description
  end

  json.status do
    json.description game.status.description
    json.rank game.status.rank
  end

  json.questions game.questions do |question|
    if question.is_active
      json.id question.id
      json.description question.description
      json.status question.status
    end
  end

end