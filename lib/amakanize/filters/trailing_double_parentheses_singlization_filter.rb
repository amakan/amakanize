# frozen_string_literal: true

require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class TrailingDoubleParenthesesSinglizationFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      # @param output [String] e.g. `"ヒナまつり 11 (ヒナまつり)  (ビームコミックス(ハルタ) )"`
      # @return [Hash] e.g. `"ヒナまつり 11 (ヒナまつり)  (ビームコミックスハルタ )"`
      def call(context:, output:)
        {
          context: context,
          output: output.sub(/\([^(^)]+?\([^(]+?\)[^)^(]+?\)\z/) do
            "(#{::Regexp.last_match(0).gsub(/[()]/, '')})"
          end
        }
      end
    end
  end
end
