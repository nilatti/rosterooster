json.array!(@gatherings) do |gathering|
  json.extract! gathering, :id, :location, :start, :end, :leader, :name
  json.url gathering_url(gathering, format: :json)
end
