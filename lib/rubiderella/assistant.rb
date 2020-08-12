# frozen_string_literal: true

module Rubiderella
  class Assistant < Person
    class << self
      def config
        @config = Dir.glob("#{File.dirname(__FILE__)}/../../config/assistant/*.yml").each_with_object({}) do |file, idols|
          idols.merge!(YAML.load_file(file))
        end.deep_symbolize_keys
      end

      def find_by_key(key)
        raise UnknownAssistantError unless valid?(key)

        new(@config[key])
      end
    end
  end
end
