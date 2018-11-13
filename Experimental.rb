require "eq/parser/version"

module Eq
  module Parser
    class Base
      # [Wed Nov 20 22:25:37 2013]
      attr_reader :matches
      TIMESTAMP = %r{\[(?<wday>.{3})\s(?<month>.{3})\s(?<day>[0-9]{2})\s(?<hour>[0-9]{2}):(?<min>[0-9]{2}):(?<sec>[0-9]{2})\s(?<year>[0-9]{4})\]\s?}

      def self.match(string)
        match = regex.match(string)
        return new(match) if match

        false
      end

      def self.regex
        TIMESTAMP
      end

      def initialize(matches)
        @matches = matches
      end

      def weekday
        matches[:wday]
      end

      def month
        matches[:month]
      end

      def day
        matches[:day]
      end

      def hour
        matches[:hour]
      end

      def minute
        matches[:min]
      end

      def second
        matches[:sec]
      end

      def year
        matches[:year]
      end
    end
  end
end

['environment', 'spell', 'melee'].each do |sub_parser|
  require "eq/parser/#{sub_parser}/#{sub_parser}"
end
