# frozen_string_literal: true

module Rubiderella
  class Person
    class Birthday
      attr_reader :month, :day

      def initialize(args)
        @month = args[:month]
        @day = args[:day]
      end

      def date
        "#{@month}月#{@day}日"
      end
    end
  end
end
