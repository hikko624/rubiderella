module Rubiderella
  class Idol
    class Name
      attr_reader :last, :last_kana, :first, :first_kana

      def initialize(args)
        @last = args[:last]
        @last_kana = args[:last_kana]
        @first = args[:first]
        @first_kana = args[:first_kana]
      end

      def full
        @last + @first
      end

      def full_kana
        @last_kana + @first_kana
      end
    end
  end
end
