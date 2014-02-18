json.array!(@tools) do |tool|
  json.extract! tool, :id, :name, :purpose
  json.url tool_url(tool, format: :json)
end
