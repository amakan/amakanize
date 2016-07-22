module Amakanize
  module Filters
    class TrailingSeriesNamePayloadDeletionFilter < BaseFilter
      PAYLOADS = %w(
        通常版
      )

      # @note Override
      # @param string [String] e.g. `"魔法使いの嫁 通常版"`
      # @return [String] e.g. `"魔法使いの嫁"`
      def call(string)
        string.gsub(/\s+#{::Regexp.union(PAYLOADS)}\z/, "")
      end
    end
  end
end
