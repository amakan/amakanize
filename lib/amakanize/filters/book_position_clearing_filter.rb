# frozen_string_literal: true

require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class BookPositionClearingFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      def call(context:, output:)
        output = "" unless context[:position_detected]
        {
          context: context,
          output: output
        }
      end
    end
  end
end
