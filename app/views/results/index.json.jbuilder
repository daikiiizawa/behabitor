json.array!(@results) do |result|
  json.extract! result, :id, :type, :execution_time
  json.url result_url(result, format: :json)
end
