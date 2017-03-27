require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class TrailingVolumeNumberDeletionFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      # @param output [String] e.g. `"やはり俺の青春ラブコメはまちがっている。4"`, `"ネトゲの嫁は女の子じゃないと思った? Lv.2"`
      # @return [Hash] e.g. `"やはり俺の青春ラブコメはまちがっている。"`, `"ネトゲの嫁は女の子じゃないと思った?"`
      def call(context:, output:)
        if !context[:volume_number_removed] && !output.match(/[^\s]Lv\.?\s*#{Amakanize::PATTERN_OF_NUMERIC_CHARACTERS}\z/i)
          output = output.sub(/,?\s*#{PATTERN_OF_VOLUME_PREFIX}?#{Amakanize::PATTERN_OF_NUMERIC_CHARACTERS}(?:話|巻|版)?(?:\s*\(.*?\))?\z/, "")
        end
        {
          context: context,
          output: output,
        }
      end
    end
  end
end
