json.array!(@items) do |item|
  json.extract! item, :id, :name, :number, :time_needed, :location_needed
  json.url item_url(item, format: :json)
end
