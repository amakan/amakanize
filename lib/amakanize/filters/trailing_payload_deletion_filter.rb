module Amakanize
  module Filters
    class TrailingPayloadDeletionFilter < BaseFilter
      PAYLOADS = %w(
        その他
        ほか
        他
      )

      # @note Override
      # @param string [String] e.g. `"ハノカゲ　ほか"`
      # @return [String] e.g. `"ハノカゲ"`
      def call(string)
        string.gsub(/[[:space:]]+#{::Regexp.union(PAYLOADS)}\z/, "")
      end
    end
  end
end
