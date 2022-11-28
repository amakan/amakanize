# frozen_string_literal: true

require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class StripFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      # @param output [String] e.g. `" 　ハノカゲ 　"`
      # @return [Hash] e.g. `"ハノカゲ"`
      def call(context:, output:)
        {
          context: context,
          output: output.strip
        }
      end
    end
  end
end
