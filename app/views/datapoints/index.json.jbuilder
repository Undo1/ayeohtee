json.array!(@datapoints) do |datapoint|
  json.extract! datapoint, :id, :device_id, :metric, :value
  json.url datapoint_url(datapoint, format: :json)
end
