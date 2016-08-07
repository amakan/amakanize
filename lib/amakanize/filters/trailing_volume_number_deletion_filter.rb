module Amakanize
  module Filters
    class TrailingVolumeNumberDeletionFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"やはり俺の青春ラブコメはまちがっている。4"`
      # @return [String] e.g. `"やはり俺の青春ラブコメはまちがっている。"`
      def call(string)
        string.gsub(/\s*第?[\diIvVxX１-９①②③④⑤⑥⑦⑧⑨⑩〇一二三四五六七八九十百千万零壱弍参肆伍陸漆捌玖壹貳參拾佰仟萬]+(?:話|巻)?\z/, "")
      end
    end
  end
end
