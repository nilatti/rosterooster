json.array!(@events) do |event|
  json.extract! event, :id, :organization_id, :name, :start, :end, :location
  json.url event_url(event, format: :json)
end
