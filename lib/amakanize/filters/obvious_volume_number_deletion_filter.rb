module Amakanize
  module Filters
    class ObviousVolumeNumberDeletionFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"刀語 第十一話 毒刀・鍍"`, `"アニウッド大通り 1: アニメ監督一家物語"`
      # @return [String] e.g. `"刀語"`, `"アニウッド大通り"`
      def call(string)
        string.gsub(/\s*#{PATTERN_OF_VOLUME_PREFIX}?#{Amakanize::PATTERN_OF_NUMERIC_CHARACTERS}(?:話|巻|版).*/, "")
          .gsub(/\s+#{PATTERN_OF_VOLUME_PREFIX}?#{Amakanize::PATTERN_OF_NUMERIC_CHARACTERS}(?:話|巻|版)?:\s+.*/, "")
          .gsub(/\s*\(#{PATTERN_OF_VOLUME_PREFIX}?#{Amakanize::PATTERN_OF_NUMERIC_CHARACTERS}\).*/, "")
          .gsub(/\s*\d+年\s*\d+(?:月|\/\d+\s*)号.*/, "")
          .gsub(/\s*\d{4}\s*(?:AUTUMN|SPRING|SUMMER|WINTER)/, "")
      end
    end
  end
end
