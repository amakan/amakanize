module Amakanize
  module Filters
    class TrailingVolumeNumberDeletionFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"やはり俺の青春ラブコメはまちがっている。4"`, `"ネトゲの嫁は女の子じゃないと思った? Lv.2"`
      # @return [String] e.g. `"やはり俺の青春ラブコメはまちがっている。"`, `"ネトゲの嫁は女の子じゃないと思った?"`
      def call(string)
        string.gsub(/\s*(?:第|Lv\.?|volume\s)?#{Amakanize::PATTERN_OF_NUMERIC_CHARACTERS}(?:話|巻|版)?\z/, "")
      end
    end
  end
end
