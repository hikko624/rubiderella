# frozen_string_literal: true

module Rubiderella
  class Idol
    class Birthday
      attr_reader :month, :day

      def initialize(args)
        @month = args[:month]
        @day = args[:day]
      end

      def date
        @month.to_s + '月' + @day.to_s + '日'
      end
    end
  end
end
