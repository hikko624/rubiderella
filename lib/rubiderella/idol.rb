module Rubiderella

  class Idol
    attr_reader :name, :type, :age, :birthday, :sign, :blood, :height, :weight, :bust, :waist, :hip, :handed, :from,
                :favorite, :cv
    @config = nil
    @all = nil

    def initialize(args)
      @name = args[:name]
      @type = args[:type]
      @age = args[:age]
      @birthday = args[:birthday]
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

    class UnknownIdolError < StandardError; end

    class << self
      def config
        @config = Dir.glob("#{File.dirname(__FILE__ )}/../../config/idols/*.yml").each_with_object({}) do |file, idols|
          idols.merge!(YAML.load_file(file))
        end.deep_symbolize_keys
      end

      def names
        config.keys
      end

      def valid?(idol_name)
        names.include?(idol_name)
      end

      def all
        @all = config.map do |key, value|
          value[:key] = key
          new(**value)
        end
      end

      def find_by_key(name)
        raise UnknownIdolError unless valid?(name)
        new(@config[name])
      end
    end
  end
end
