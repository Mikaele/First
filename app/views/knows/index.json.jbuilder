json.array!(@langs) do |lang|
  json.extract! lang, :id, :nome, :obs, :requisitos
  json.url lang_url(lang, format: :json)
end
