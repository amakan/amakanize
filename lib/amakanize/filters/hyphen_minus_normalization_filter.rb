module Amakanize
  module Filters
    class HyphenMinusNormalizationFilter < BaseFilter
      # @note Override
      # @note Replace U+2010 (hyphen) with U+002D (hyphen/minus)
      # @param string [String] e.g. `"D.Gray‐man"`
      # @return [String] e.g. `"D.Gray-man"`
      def call(string)
        string.gsub("‐", "-")
      end
    end
  end
end
