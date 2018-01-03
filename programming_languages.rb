require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style,lang_list|
    style_array = []
    lang_list.each do |lang,type_data|
      new_hash[lang] = {}
      type_data.each do |k,v|
        new_hash[lang][k] = v
        style_array << style
        new_hash[lang][:style] = style_array
      end
    end
  end
  binding.pry
  new_hash
end
