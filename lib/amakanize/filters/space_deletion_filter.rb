module Amakanize
  module Filters
    class SpaceDeletionFilter < BaseFilter
      # @note Override
      # @param output [String] e.g. `"渡 航"`
      # @return [Hash] e.g. `"渡航"`
      def call(context:, output:)
        {
          context: context,
          output: output.gsub(/\s+/, ""),
        }
      end
    end
  end
end
