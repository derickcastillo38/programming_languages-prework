#require 'pry'
def reformat_languages(languages)
  new_hash = {}
  languages.each do |system, lang_hash|
    lang_hash.each do |lang, type_hash|
      new_hash[lang] = {type: type_hash[:type]}
      if new_hash[lang][:style]
        new_hash[lang][:style] << system
      else
        new_hash[lang] = {type: type_hash[:type], style: [system]}
      end
    end 
  end
  new_hash    
end
