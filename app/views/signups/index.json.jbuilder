json.array!(@signups) do |signup|
  json.extract! signup, :id, :gathering_id, :person_id, :registration_id
  json.url signup_url(signup, format: :json)
end
