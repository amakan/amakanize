require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class BracketsNormalizationFilter < ::Amakanize::Filters::BaseFilter
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
            " \(#{::Regexp.last_match(1)})#{' ' if Regexp.last_match(2)}"
          end
        }
      end
    end
  end
end
