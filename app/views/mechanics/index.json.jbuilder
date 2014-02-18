json.array!(@mechanics) do |mechanic|
  json.extract! mechanic, :id, :name, :company
  json.url mechanic_url(mechanic, format: :json)
end
