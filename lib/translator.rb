# require modules here
require "yaml"
require 'pp'


def load_library(file)
  emoticons = YAML.load_file(file)
  pp emoticons
  # getMeaning = [emoticons.each do |k,v| v[1], k end]
  # getEmoticon = emoticons.each do |k,v| v[0],v[1] end
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