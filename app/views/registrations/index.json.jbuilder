json.array!(@registrations) do |registration|
  json.extract! registration, :id, :group_id, :event_id, :accommodation_id, :person_id, :paid, :organization_id
  json.url registration_url(registration, format: :json)
end
