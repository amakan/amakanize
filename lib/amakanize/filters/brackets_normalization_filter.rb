module Amakanize
  module Filters
    class BracketsNormalizationFilter < BaseFilter
      PAIRS = %w|
          ‹ ›
        ‾ ‾
        - -
        ― ―
        〜 〜
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
      # @param string [String] e.g. `"IS〈インフィニット・ストラトス〉 1 (オーバーラップ文庫)"`
      # @return [String] e.g. `"IS(インフィニット・ストラトス) 1 (オーバーラップ文庫)"`
      def call(string)
        PAIRS.each_with_object(string) do |(open, close), result|
          result.gsub!(/#{open}(.+?)#{close}/, '(\1)')
        end
      end
    end
  end
end
