def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, style_hash|
    style_hash.each do |language, lang_hash|
      lang_hash.each do |type, type_result|
        if new_hash[language].nil?
          new_hash[language] = {}
        end
        new_hash[language][:style] ||= []
        new_hash[language][:style] << style
        new_hash[language][:type] = type_result
      end
    end
  end
  new_hash
end
