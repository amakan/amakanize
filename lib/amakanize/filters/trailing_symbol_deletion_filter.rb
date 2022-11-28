# frozen_string_literal: true

require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class TrailingSymbolDeletionFilter < ::Amakanize::Filters::BaseFilter
      PATTERN = /\s*[-:]\z/.freeze

      # @note Override
      def call(context:, output:)
        output = output.gsub(PATTERN, "")
        {
          context: context,
          output: output
        }
      end
    end
  end
end
