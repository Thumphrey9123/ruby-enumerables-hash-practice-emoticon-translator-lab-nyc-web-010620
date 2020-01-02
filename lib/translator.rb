# require modules here
require "yaml"
require 'pp'


def load_library(file)
  emoticons = YAML.load_file(file)
  hash = {:get_meaning => {},:get_emoticon => {}}
  emoticon.each {|k,v| hash[:get_meaning][v[1]] = k}
  emoticon.each {|k,v| hash[:get_emoticon][v[0]] = v[1]}
  hash
end

def get_japanese_emoticon(file, emoticon)
  lib = load_library(file)
  if lib[emoticon]
    return lib[emoticon]
  else
    return "Sorry a translation cannot be found"
end
end

def get_english_meaning(file, emoticon)
  lib = load_library(file)
  if lib[emoticon]
    return lib[emoticon]
  else
    return "Sorry a translation cannot be found"
  end
end