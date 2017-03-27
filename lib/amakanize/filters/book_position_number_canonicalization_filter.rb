require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class BookPositionNumberCanonicalizationFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      def call(context:, output:)
        if context[:position_detected]
          output = output.gsub(/\A0+([1-9]+)/, '\1')
        end
        {
          context: context,
          output: output,
        }
      end
    end
  end
end
