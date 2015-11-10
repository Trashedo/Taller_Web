json.array!(@musico_bandas) do |musico_banda|
  json.extract! musico_banda, :id, :musico_id, :banda_id
  json.url musico_banda_url(musico_banda, format: :json)
end
