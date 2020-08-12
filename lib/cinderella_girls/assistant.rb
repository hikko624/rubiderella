# frozen_string_literal: true

module CinderellaGirls
  class Assistant
    Rubiderella::Assistant.names.each do |name|
      define_singleton_method name do
        Rubiderella::Assistant.find_by_key(name)
      end
    end

    def self.all
      Rubiderella::Assistant.all
    end
  end
end
