# require modules here
require "yaml"

def load_library(path)
  # code goes here
  new_hash = {
    'get_meaning' => {}, # includes japanese emoticons
    'get_emoticon' => {} # includes english emoticons
  }
  #puts new_hash[0]
  emoticons = YAML.load_file(path)
  emoticons.each do |definition,language_array|
   
   new_hash['get_meaning'][language_array[1]] = definition
  
   new_hash['get_emoticon'][language_array[0]] = language_array[1]
   
  end
  #puts new_hash
  return new_hash
end

def get_japanese_emoticon(path,emote)
  # code goes here
  japanese_equivalent = ""
  emoticons = load_library(path)
  emoticons['get_emoticon'].each do |key, value|
    if key == emote
      japanese_equivalent = value
    end
  end
  #puts japanese_equivalent.empty?
  if japanese_equivalent.empty? == false
    return japanese_equivalent
  else
    return "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(path,emote)
  # code goes here
  emoticons = load_library(path)
end

