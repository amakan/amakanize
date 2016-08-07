module Amakanize
  module Filters
    class ObviousVolumeNumberDeletionFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"刀語 第十一話 毒刀・鍍"`
      # @return [String] e.g. `"刀語"`
      def call(string)
        string.gsub(/\s*第?[\diIvVxX１-９①②③④⑤⑥⑦⑧⑨⑩〇一二三四五六七八九十百千万零壱弍参肆伍陸漆捌玖壹貳參拾佰仟萬]+(?:話|巻).*/, "")
      end
    end
  end
end
