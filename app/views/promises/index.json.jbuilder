json.array!(@promises) do |promise|
  json.extract! promise, :id, :item_id, :person_id, :registration_id
  json.url promise_url(promise, format: :json)
end
