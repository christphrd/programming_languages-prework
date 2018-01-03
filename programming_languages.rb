require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style,lang_list|
    lang_list.each do |lang,type_data|
      new_hash[lang] = {}
      type_data.each do |k,v|
        new_hash[lang][k] = v
      end
    end
  end
  style_array = []
  languages.each do |style,lang_list|
    lang_list.each do |lang,type_data|
      new_hash[lang][:style] = style_array
    end
  end
  binding.pry
  new_hash
end
