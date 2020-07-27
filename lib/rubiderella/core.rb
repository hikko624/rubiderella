require 'singleton'

module Rubiderella
  class Core
    include Singleton

    def self.method_missing(symbol, *args)
      return Rubiderella::Idol.find_by_key(symbol) if Rubiderella::Idol.valid?(symbol)
      Rubiderella::Idol.send(symbol, *args)
    end
  end
end
