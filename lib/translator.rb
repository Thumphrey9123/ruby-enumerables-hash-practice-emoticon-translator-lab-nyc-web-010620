# require modules here
require "yaml"
require 'pp'


def load_library(file)
  emoticons = YAML.load_file(file)
  getMeaning = emoticons.each {|k,v| v[1], k}
  getEmoticon = emoticons.each {|k,v| v[0],v[1]}
  p getEmoticon
  hash = {
  get_meaning => { m },
  get_emoticon => { e }
  }
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