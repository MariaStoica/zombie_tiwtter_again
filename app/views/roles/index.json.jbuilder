json.array!(@roles) do |role|
  json.extract! role, :id, :position
  json.url role_url(role, format: :json)
end
