json.array!(@themostats) do |themostat|
  json.extract! themostat, :id, :serial
  json.url themostat_url(themostat, format: :json)
end
