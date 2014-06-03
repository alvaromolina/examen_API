json.array!(@thermostat_histories) do |thermostat_history|
  json.extract! thermostat_history, :id, :thermostat_id, :temperature, :humidity, :kw, :co2
  json.url thermostat_history_url(thermostat_history, format: :json)
end
