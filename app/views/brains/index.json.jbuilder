json.array!(@brains) do |brain|
  json.extract! brain, :id, :zombie_id, :flavor, :status
  json.url brain_url(brain, format: :json)
end
