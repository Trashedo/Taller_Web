json.array!(@instrumentos) do |instrumento|
  json.extract! instrumento, :id, :nombre, :tipo
  json.url instrumento_url(instrumento, format: :json)
end
