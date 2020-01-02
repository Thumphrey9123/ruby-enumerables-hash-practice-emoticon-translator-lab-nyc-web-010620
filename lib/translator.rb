# require modules here
require "yaml"
require 'pp'


def load_library(file)
  emoticons = YAML.load_file(file)
  new_hash = {}
  emoticons.each {|k,v| new_hash[v[1]] = k }
  emoticons.each {|k,v| new_hash[v[0]] = v[1]}
  pp new_hash
  # p getEmoticon
  # hash = {
  # get_meaning => {},
  # get_emoticon => {}
  # }
  # hash
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