json.array!(@toolboxes) do |toolbox|
  json.extract! toolbox, :id, :tool_id, :mechanic_id
  json.url toolbox_url(toolbox, format: :json)
end
