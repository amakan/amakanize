# frozen_string_literal: true

require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class HyphenMinusNormalizationFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      # @note Replace U+2010 (hyphen) with U+002D (hyphen/minus)
      # @param output [String] e.g. `"D.Gray‐man"`
      # @return [Hash] e.g. `"D.Gray-man"`
      def call(context:, output:)
        {
          context: context,
          output: output.tr("‐", "-")
        }
      end
    end
  end
end
