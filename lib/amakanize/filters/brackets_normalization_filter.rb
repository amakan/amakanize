module Amakanize
  module Filters
    class BracketsNormalizationFilter < BaseFilter
      PAIRS = %w|
        ‾ ‾
        - -
        ― ―
        〜 〜
        ‹ ›
        « »
        （ ）
        ［ ］
        { }
        ｛ ｝
        〈 〉
        《 》
        【 】
        〔 〕
        〘 〙
        〚 〛
        \[ \]
        < >
        ＜ ＞
        ~ ~
      |.each_slice(2)

      # @note Override
      # @param output [String] e.g. `"IS〈インフィニット・ストラトス〉 1 (オーバーラップ文庫)"`
      # @return [Hash] e.g. `"IS (インフィニット・ストラトス) 1 (オーバーラップ文庫)"`
      def call(context:, output:)
        {
          context: context,
          output: PAIRS.each_with_object(output) do |(open, close), result|
            result.gsub!(/#{open}([^\(]+?)#{close}/, '(\1)')
          end.gsub(/\s*\((.+?)\)(?:\z|(\s*))/) do
            " \(#{$1})#{' ' if $2}"
          end
        }
      end
    end
  end
end
