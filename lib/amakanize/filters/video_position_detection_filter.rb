# frozen_string_literal: true

require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class VideoPositionDetectionFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      # @param output [String] e.g. `"第1話「でじこだにょ」/第2話「ぷちこと一緒かにょ？」"`
      # @return [Hash] e.g. `"1"`
      def call(context:, output:)
        output = if output.match(/#{::Amakanize::PATTERN_OF_VOLUME_PREFIX}(#{PATTERN_OF_NUMERIC_CHARACTERS})/)
                   ::Regexp.last_match(1)
                 else
                   ""
                 end

        {
          context: context,
          output: output
        }
      end
    end
  end
end
