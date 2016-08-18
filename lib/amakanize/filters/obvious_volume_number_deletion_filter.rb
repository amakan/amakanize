module Amakanize
  module Filters
    class ObviousVolumeNumberDeletionFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"刀語 第十一話 毒刀・鍍"`
      # @return [String] e.g. `"刀語"`
      def call(string)
        string.gsub(/\s*第#{Amakanize::PATTERN_OF_NUMERIC_CHARACTER}+(?:話|巻).*/, "")
      end
    end
  end
end
