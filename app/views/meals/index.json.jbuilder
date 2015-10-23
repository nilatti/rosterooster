json.array!(@meals) do |meal|
  json.extract! meal, :id, :name, :start, :end, :location, :menu
  json.url meal_url(meal, format: :json)
end
