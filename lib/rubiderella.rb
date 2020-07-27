require 'active_support/all'
require 'yaml'
require 'pry-byebug'
require 'rubiderella/idol'
require 'rubiderella/core'
require "rubiderella/version"

module Cinderella
  def self.method_missing(symbol, *args)
    Rubiderella::Core.send(symbol, *args)
  end
end
