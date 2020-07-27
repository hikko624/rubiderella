require 'singleton'

module Rubiderella
  class Core
    include Singleton

    def method_missing(symbol, *args)
      Rubiderella::Idol.send(symbol, *args)
    end
  end
end
