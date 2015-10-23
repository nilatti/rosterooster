json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :meal_id, :person_id, :registration_id
  json.url reservation_url(reservation, format: :json)
end
