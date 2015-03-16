json.array!(@logs) do |log|
  json.extract! log, :id, :BedInTime, :SleepInTime, :WakeUpTime, :BedOutTime, :Quority
  json.url log_url(log, format: :json)
end
