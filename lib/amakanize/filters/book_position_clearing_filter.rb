require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class BookPositionClearingFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      def call(context:, output:)
        unless context[:position_detected]
          output = ""
        end
        {
          context: context,
          output: output,
        }
      end
    end
  end
end
