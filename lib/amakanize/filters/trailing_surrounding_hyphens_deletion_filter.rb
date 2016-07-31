module Amakanize
  module Filters
    class TrailingSurroundingHyphensDeletionFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"艦隊これくしょん -艦これ- 島風 つむじ風の少女"`
      # @return [String] e.g. `"艦隊これくしょん"`
      def call(string)
        string.gsub(/\s*-.+-.*/, "")
      end
    end
  end
end
