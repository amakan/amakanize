module Amakanize
  module Filters
    class VideoPositionDetectionFilter < BaseFilter
      # @note Override
      # @param output [String] e.g. `"第1話「でじこだにょ」/第2話「ぷちこと一緒かにょ？」"`
      # @return [Hash] e.g. `"1"`
      def call(context:, output:)
        output = begin
          if output.match(/#{::Amakanize::PATTERN_OF_VOLUME_PREFIX}(#{PATTERN_OF_NUMERIC_CHARACTERS})/)
            ::Regexp.last_match(1)
          else
            ""
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
