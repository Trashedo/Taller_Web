json.array!(@musicos) do |musico|
  json.extract! musico, :id, :nombre, :paterno, :materno, :usuario_id, :instrumento_id, :usuario_id, :instrumento_id
  json.url musico_url(musico, format: :json)
end
