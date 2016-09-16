module Amakanize
  module Filters
    class ContinuousSpacesNormalizationFilter < BaseFilter
      # @note Override
      # @param output [String] e.g. `"ウメハラ  FIGHTING GAMERS!"`
      # @return [Hash] e.g. `"ウメハラ FIGHTING GAMERS!"`
      def call(context:, output:)
        {
          context: context,
          output: output.gsub(/\s+/, " "),
        }
      end
    end
  end
end
