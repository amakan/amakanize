module Amakanize
  module Filters
    class ContinuousSpacesNormalizationFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"ウメハラ  FIGHTING GAMERS!"`
      # @return [String] e.g. `"ウメハラ FIGHTING GAMERS!"`
      def call(string)
        string.gsub(/\s+/, " ")
      end
    end
  end
end
