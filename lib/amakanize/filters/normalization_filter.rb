# frozen_string_literal: true

require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class NormalizationFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      # @param output [String] e.g. `"ぽんかん（８）"`, `"ぽんかん⑧"`
      # @return [Hash] e.g. `"ぽんかん(8)"`, `"ぽんかん8"`
      def call(context:, output:)
        {
          context: context,
          output: output.unicode_normalize(:nfkc)
        }
      end
    end
  end
end
