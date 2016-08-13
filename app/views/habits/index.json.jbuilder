# frozen_string_literal: true
json.array!(@habits) do |habit|
  json.extract! habit, :id, :title, :motivation, :deadline, :commit, :declaration
  json.url habit_url(habit, format: :json)
end
