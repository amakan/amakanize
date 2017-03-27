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
      /x

      # @note Override
      def call(context:, output:)
        unless context[:position_detected]
          if position = output[PATTERN, 1]
            context[:position_detected] = true
            output = position
          end
        end
        {
          context: context,
          output: output,
        }
      end
    end
  end
end
