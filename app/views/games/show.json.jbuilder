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

  json.game_type do
    json.description @game.game_type.description
  end

  json.status do
    json.description @game.status.description
    json.rank @game.status.rank
  end

end