json.question do
  json.id @question.id
  json.game_id @question.game_id
  json.description @question.description
  json.status @question.status
  json.is_active @question.is_active

  json.selections @question.selections do |selection|
    json.id selection.id
    json.question_id selection.question_id
    json.text selection.text
    json.is_right selection.is_right
  end

end
