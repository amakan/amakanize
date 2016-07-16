require "active_support"

module Amakanize
  module Filters
    class NormalizationFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"ぽんかん（８）"`, `"ぽんかん⑧"`
      # @return [String] e.g. `"ぽんかん(8)"`, `"ぽんかん8"`
      def call(string)
        ::ActiveSupport::Multibyte::Unicode.normalize(string)
      end
    end
  end
end
