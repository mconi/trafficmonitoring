json.array!(@trafficdata) do |trafficdatum|
  json.extract! trafficdatum, :switchID, :ifIndex, :ifDescr, :ifInOctets, :ifOutOctets, :diffInOctets, :diffOutOctets
  json.url trafficdatum_url(trafficdatum, format: :json)
end
