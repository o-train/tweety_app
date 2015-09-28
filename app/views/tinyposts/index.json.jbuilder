json.array!(@tinyposts) do |tinypost|
  json.extract! tinypost, :id, :content, :userID
  json.url tinypost_url(tinypost, format: :json)
end
