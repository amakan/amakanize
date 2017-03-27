require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class DashBetweenAlhabetsNormalizationFilter < ::Amakanize::Filters::BaseFilter
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
