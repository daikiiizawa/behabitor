json.array!(@targets) do |target|
  json.extract! target, :id, :type, :title, :description, :text, :precondition, :text, :habit_id
  json.url target_url(target, format: :json)
end
