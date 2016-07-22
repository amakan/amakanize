module Amakanize
  module Filters
    class TrailingVolumeNumberDeletionFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"やはり俺の青春ラブコメはまちがっている。4"`
      # @return [String] e.g. `"やはり俺の青春ラブコメはまちがっている。"`
      def call(string)
        string.gsub(/\s*第?[\dviVI１-９①②③④⑤⑥⑦⑧⑨⑩]+巻?\z/, "")
      end
    end
  end
end
