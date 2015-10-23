json.array!(@lodgings) do |lodging|
  json.extract! lodging, :id, :name, :location, :max_males, :max_females, :max_neutral, :event_id, :registration_id
  json.url lodging_url(lodging, format: :json)
end
