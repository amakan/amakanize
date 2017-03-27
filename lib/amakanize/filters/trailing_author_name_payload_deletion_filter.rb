require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class TrailingAuthorNamePayloadDeletionFilter < ::Amakanize::Filters::BaseFilter
      PAYLOADS = %w(
        その他
        ほか
        他
        原作
        原案
        漫画
      )

      # @note Override
      # @param output [String] e.g. `"ハノカゲ　ほか"`
      # @return [Hash] e.g. `"ハノカゲ"`
      def call(context:, output:)
        {
          context: context,
          output: output.gsub(/\s+#{::Regexp.union(PAYLOADS)}\z/, ""),
        }
      end
    end
  end
end
