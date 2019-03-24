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
  emoticons = load_library(path)
  emoticons['get_emoticon'].each do |key, value|
    if emote == key
      return value
    else
      return "Sorry, argument is not a known emoticon."
    end
  end
  #value
end

def get_english_meaning
  # code goes here
end

