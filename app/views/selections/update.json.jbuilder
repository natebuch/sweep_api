json.selections do
  json.id @selection.id
  json.question_id @selection.question_id
  json.text @selection.text
  json.is_right @selection.is_right
end


