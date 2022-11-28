# frozen_string_literal: true

require 'amakanize/filters/base_filter'

module Amakanize
  module Filters
    class BookPositionNumberCanonicalizationFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      def call(context:, output:)
        output = output.gsub(/\A0+([1-9]+)/, '\1') if context[:position_detected]
        {
          context: context,
          output: output
        }
      end
    end
  end
end
