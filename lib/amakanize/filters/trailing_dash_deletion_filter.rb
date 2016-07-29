module Amakanize
  module Filters
    class TrailingDashDeletionFilter < BaseFilter
      TOKENS = %w(
        ̃
        ̰
        ̴
        ‒
        –
        —
        ―
        ⁓
        〜
        〰
        ˜
        ˷
        ~
        ～
        ∼
        ─
      )

      # @note Override
      # @param string [String] e.g. `"アド・アストラ 1 ─スキピオとハンニバル─"`
      # @return [String] e.g. `"アド・アストラ 1"`
      def call(string)
        string.gsub(/\s*#{::Regexp.union(TOKENS)}.*/, "")
      end
    end
  end
end
