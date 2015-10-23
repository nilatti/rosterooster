json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :task_id, :person_id
  json.url assignment_url(assignment, format: :json)
end
