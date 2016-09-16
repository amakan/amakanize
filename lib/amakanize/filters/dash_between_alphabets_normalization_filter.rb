module Amakanize
  module Filters
    class DashBetweenAlhabetsNormalizationFilter < BaseFilter
      # @note Override
      # @param output [String] e.g. `"D.Grayーman"`
      # @return [Hash] e.g. `"D.Gray-man"`
      def call(context:, output:)
        {
          context: context,
          output: output.gsub(/(\w)ー(\w)/, '\1-\2'),
        }
      end
    end
  end
end
