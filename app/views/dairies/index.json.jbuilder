json.array!(@dairies) do |dairy|
  json.extract! dairy, :id, :title, :first, :second, :third, :fourth
  json.url dairy_url(dairy, format: :json)
end
