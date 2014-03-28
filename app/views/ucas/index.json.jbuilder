json.array!(@ucas) do |uca|
  json.extract! uca, :id, :matricula, :curso, :periodo, :email
  json.url uca_url(uca, format: :json)
end
