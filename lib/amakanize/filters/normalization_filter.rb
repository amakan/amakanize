require "active_support"

module Amakanize
  module Filters
    class NormalizationFilter < BaseFilter
      # @note Override
      # @param output [String] e.g. `"ぽんかん（８）"`, `"ぽんかん⑧"`
      # @return [Hash] e.g. `"ぽんかん(8)"`, `"ぽんかん8"`
      def call(context:, output:)
        {
          context: context,
          output: ::ActiveSupport::Multibyte::Unicode.normalize(output),
        }
      end
    end
  end
end
