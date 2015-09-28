json.array!(@code_academies) do |code_academy|
  json.extract! code_academy, :id, :content, :user_id
  json.url code_academy_url(code_academy, format: :json)
end
