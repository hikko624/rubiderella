# frozen_string_literal: true

module Rubiderella
  class Idol < Person
    class << self
      def config
        @config = Dir.glob("#{File.dirname(__FILE__)}/../../config/idols/*.yml").each_with_object({}) do |file, idols|
          idols.merge!(YAML.load_file(file))
        end.deep_symbolize_keys
      end

      def find_by_key(key)
        raise UnknownIdolError unless valid?(key)

        new(@config[key])
      end
    end
  end
end
