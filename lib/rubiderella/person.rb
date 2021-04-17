# frozen_string_literal: true

module Rubiderella
  class Person
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
        raise NotImplementedError
      end

      def names
        config.keys
      end

      def valid?(person_name)
        names.include?(person_name)
      end

      def all
        @all = config.map do |key, value|
          value[:key] = key
          new(**value)
        end
      end

      def find_by_key(key)
        raise NotImplementedError
      end
    end
  end
end
