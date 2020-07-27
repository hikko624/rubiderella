require 'active_support/all'
require 'yaml'
require 'pry-byebug'
require 'rubiderella/idol'
require 'rubiderella/idol/name'
require 'rubiderella/core'
require "rubiderella/version"

module Cinderella
  Rubiderella::Idol.names.each do |name|
    define_singleton_method name do
      Rubiderella::Idol.find_by_key(name)
    end
  end

  def self.method_missing(symbol, *args)
    Rubiderella::Core.instance.send(symbol, *args)
  end
end
