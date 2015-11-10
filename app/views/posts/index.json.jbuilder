json.array!(@posts) do |post|
  json.extract! post, :id, :titulo, :cuerpo, :usuario_id, :usuario_id
  json.url post_url(post, format: :json)
end
