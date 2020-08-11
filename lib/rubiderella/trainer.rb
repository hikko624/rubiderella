# frozen_string_literal: true

module Rubiderella
  class Trainer
    attr_reader :name, :type, :age, :birthday, :sign, :blood, :height, :weight, :bust, :waist, :hip, :handed, :from,
                :favorite, :cv
    @config = nil
    @all = nil

    def initialize(args)
      @name = Name.new(args[:name])
      @type = args[:type]
      @age = args[:age]
      @birthday = Birthday.new(args[:birthday])
      @sign = args[:sign]
      @blood = args[:blood]
      @height = args[:height]
      @weight = args[:weight]
      @bust = args[:bust]
      @waist = args[:waist]
      @hip = args[:hip]
      @handed = args[:handed]
      @from = args[:from]
      @favorite = args[:favorite]
      @cv = args[:cv]
    end

    class << self
      def config
        @config = Dir.glob("#{File.dirname(__FILE__)}/../../config/trainer/*.yml").each_with_object({}) do |file, idols|
          idols.merge!(YAML.load_file(file))
        end.deep_symbolize_keys
      end

      def names
        config.keys
      end

      def valid?(trainer_name)
        names.include?(trainer_name)
      end

      def all
        @all = config.map do |key, value|
          value[:key] = key
          new(**value)
        end
      end

      def find_by_key(key)
        raise UnknownTrainerError unless valid?(key)

        new(@config[key])
      end
    end
  end
end
