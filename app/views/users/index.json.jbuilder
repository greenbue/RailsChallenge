json.array!(@users) do |user|
  json.extract! user, :id, :Name, :Age
  json.url user_url(user, format: :json)
end
