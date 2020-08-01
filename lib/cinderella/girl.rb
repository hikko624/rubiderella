module Cinderella
  class Girl
    Rubiderella::Idol.names.each do |name|
      define_singleton_method name do
        Rubiderella::Idol.find_by_key(name)
      end
    end

    def self.all
      Rubiderella::Idol.all
    end
  end
end
