# frozen_string_literal: true

require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class ParenthesesDeletionFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      # @param output [String] e.g. `"ぽんかん(8)"`
      # @return [Hash] e.g. `"ぽんかん8"`
      def call(context:, output:)
        {
          context: context,
          output: output.gsub(/\((\d+)\)/, '\1')
        }
      end
    end
  end
end
