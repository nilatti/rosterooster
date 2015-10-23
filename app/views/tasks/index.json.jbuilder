json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :location, :start, :end, :description, :number_needed
  json.url task_url(task, format: :json)
end
