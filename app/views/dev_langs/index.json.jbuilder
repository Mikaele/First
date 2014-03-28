json.array!(@dev_langs) do |dev_lang|
  json.extract! dev_lang, :id, :nome, :obs
  json.url dev_lang_url(dev_lang, format: :json)
end
