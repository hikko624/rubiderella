# frozen_string_literal: true

module CinderellaGirls
  class Trainer
    Rubiderella::Trainer.names.each do |name|
      define_singleton_method name do
        Rubiderella::Trainer.find_by_key(name)
      end
    end

    def self.all
      Rubiderella::Trainer.all
    end
  end
end
