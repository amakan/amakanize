require "active_support"
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
          output: ::ActiveSupport::Multibyte::Unicode.normalize(output),
        }
      end
    end
  end
end
