json.array!(@zombies) do |zombie|
  json.extract! zombie, :id, :name, :bio, :age, :graveyard, :email, :rotting
  json.url zombie_url(zombie, format: :json)
end
