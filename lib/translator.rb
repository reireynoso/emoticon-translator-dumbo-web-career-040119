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
  puts new_hash
  return new_hash
end

def get_japanese_emoticon(path,emote)
  # code goes here
  emoticons = load_library(path)
  puts emoticons['get_emoticon']
end

def get_english_meaning
  # code goes here
end

