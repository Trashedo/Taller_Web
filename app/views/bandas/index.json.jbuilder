json.array!(@bandas) do |banda|
  json.extract! banda, :id, :nombre, :genero
  json.url banda_url(banda, format: :json)
end
