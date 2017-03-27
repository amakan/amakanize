require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class ObviousVolumeNumberDeletionFilter < ::Amakanize::Filters::BaseFilter
      PATTERN = Regexp.union(
        /\s*#{::Amakanize::PATTERN_OF_VOLUME_PREFIX}?#{::Amakanize::PATTERN_OF_NUMERIC_CHARACTERS}(?:話|巻|版).*/,
        /\s+#{::Amakanize::PATTERN_OF_VOLUME_PREFIX}?#{::Amakanize::PATTERN_OF_NUMERIC_CHARACTERS}(?:話|巻|版)?:\s+.*/,
        /\s+#{::Amakanize::PATTERN_OF_VOLUME_PREFIX}#{::Amakanize::PATTERN_OF_NUMERIC_CHARACTERS}\s+.*/,
        /\s+Lv\.?\s*#{::Amakanize::PATTERN_OF_NUMERIC_CHARACTERS}(?:\s+.*|\z)/,
        /\s*\(#{::Amakanize::PATTERN_OF_VOLUME_PREFIX}?#{::Amakanize::PATTERN_OF_NUMERIC_CHARACTERS}\).*/,
        %r<\s*\d+年\s*\d+\s*(?:月|/\d+\s*)号.*>,
        /\s*\d{4}\s*(?:AUTUMN|SPRING|SUMMER|WINTER)/,
        /\s*\d+年\s*\d+\s*号.*/,
      )

      # @note Override
      # @param output [String] e.g. `"刀語 第十一話 毒刀・鍍"`, `"アニウッド大通り 1: アニメ監督一家物語"`
      # @return [Hash] e.g. `"刀語"`, `"アニウッド大通り"`
      def call(context:, output:)
        unless context[:volume_number_removed]
          output = output.sub(PATTERN) do
            context[:volume_number_removed] = true
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
