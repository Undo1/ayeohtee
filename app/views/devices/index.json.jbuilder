json.array!(@devices) do |device|
  json.extract! device, :id, :identifier, :name, :last_seen, :location
  json.url device_url(device, format: :json)
end
