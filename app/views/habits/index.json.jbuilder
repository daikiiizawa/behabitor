json.array!(@habits) do |habit|
  json.extract! habit, :id, :title, :mativation, :deadline, :commit, :declaration
  json.url habit_url(habit, format: :json)
end
