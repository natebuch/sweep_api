json.question do
  json.id @question.id
  json.game_id @question.game_id
  json.description @question.description
  json.status @question.status
  json.is_active @question.is_active
end