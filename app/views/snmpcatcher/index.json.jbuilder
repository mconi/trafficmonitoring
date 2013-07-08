json.array!(@devices) do |device|
  json.extract! device, :name, :hostname, :ip, :snmpcommunity, :commentar, :password, :location
  json.url device_url(device, format: :json)
end
