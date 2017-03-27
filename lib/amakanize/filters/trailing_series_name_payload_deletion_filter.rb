require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class TrailingSeriesNamePayloadDeletionFilter < ::Amakanize::Filters::BaseFilter
      PAYLOADS = %w(
        通常版
        (未分類)
      )

      # @note Override
      # @param output [String] e.g. `"魔法使いの嫁 通常版"`
      # @return [Hash] e.g. `"魔法使いの嫁"`
      def call(context:, output:)
        {
          context: context,
          output: output.gsub(/\s+#{::Regexp.union(PAYLOADS)}\z/, ""),
        }
      end
    end
  end
end
