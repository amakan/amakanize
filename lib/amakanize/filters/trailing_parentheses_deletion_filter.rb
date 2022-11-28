# frozen_string_literal: true

require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class TrailingParenthesesDeletionFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      # @param output [String] e.g. `"魔法使いの嫁 通常版 4 (BLADE COMICS)"`
      # @return [Hash] e.g. `"魔法使いの嫁 通常版 4"`
      def call(context:, output:)
        output = output.sub(/\s*\([^(]+\)\z/, "") unless context[:volume_number_removed]
        {
          context: context,
          output: output
        }
      end
    end
  end
end
