# frozen_string_literal: true

require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class BookPositionAtEndDetectionFilter < ::Amakanize::Filters::BaseFilter
      PATTERN = /
        (?:#{::Amakanize::PATTERN_OF_PREFIX_OF_BOOK_POSITION})?
        (#{::Amakanize::PATTERN_OF_NUMERIC_CHARACTERS})
        (?:#{::Amakanize::PATTERN_OF_SUFFIX_OF_BOOK_POSITION})?
        \s*
        \z
      /x.freeze

      # @note Override
      def call(context:, output:)
        if !context[:position_detected] && (position = output[PATTERN, 1])
          context[:position_detected] = true
          output = position
        end
        {
          context: context,
          output: output
        }
      end
    end
  end
end
