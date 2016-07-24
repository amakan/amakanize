module Amakanize
  module Filters
    class TrailingAuthorNamePayloadDeletionFilter < BaseFilter
      PAYLOADS = %w(
        その他
        ほか
        他
        原作
        原案
        漫画
      )

      # @note Override
      # @param string [String] e.g. `"ハノカゲ　ほか"`
      # @return [String] e.g. `"ハノカゲ"`
      def call(string)
        string.gsub(/\s+#{::Regexp.union(PAYLOADS)}\z/, "")
      end
    end
  end
end
