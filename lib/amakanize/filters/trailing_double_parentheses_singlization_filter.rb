module Amakanize
  module Filters
    class TrailingDoubleParenthesesSinglizationFilter < BaseFilter
      # @note Override
      # @param output [String] e.g. `"ヒナまつり 11 (ヒナまつり)  (ビームコミックス(ハルタ) )"`
      # @return [Hash] e.g. `"ヒナまつり 11 (ヒナまつり)  (ビームコミックスハルタ )"`
    def call(context:, output:)
        {
            context: context,
            output: output.sub(/\([^\(^\)]+?\([^\(]+?\)[^\)^\(]+?\)\z/){ '(' + $&.gsub(/[\(\)]/,'') + ')' },
        }
      end
    end
  end
end
