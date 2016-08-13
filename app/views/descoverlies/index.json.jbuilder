# frozen_string_literal: true
json.array!(@descoverlies) do |descoverly|
  json.extract! descoverly, :id, :descovery_time, :type, :description
  json.url descoverly_url(descoverly, format: :json)
end
