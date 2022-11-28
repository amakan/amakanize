# frozen_string_literal: true

require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class VideoPositionNumberConversionFilter < ::Amakanize::Filters::BaseFilter
      TABLE = {
        /i/i => 1,
        /ii/i => 2,
        /iii/i => 3,
        /iv/i => 4,
        /v/i => 5,
        /vi/i => 6,
        /vii/i => 7,
        /viii/i => 8,
        /ix/i => 9,
        /x/i => 10,
        /xi/i => 11,
        /xii/i => 12,
        /xiii/i => 13,
        /xiv/i => 14,
        /xv/i => 15,
        /xvi/i => 16,
        /xvii/i => 17,
        /xviii/i => 18,
        /xix/i => 19,
        /xx/i => 20,
        /xxi/i => 21,
        /xxii/i => 22,
        /xxiii/i => 23,
        /xxiv/i => 24,
        /xxv/i => 25,
        /xxvi/i => 26,
        /xxvii/i => 27,
        /xxviii/i => 28,
        /xxix/i => 29,
        /xxx/i => 30,
        "一" => 1,
        "二" => 2,
        "三" => 3,
        "四" => 4,
        "五" => 5,
        "六" => 6,
        "七" => 7,
        "八" => 8,
        "九" => 9,
        "十" => 10,
        "十一" => 11,
        "十二" => 12,
        "十三" => 13,
        "十四" => 14,
        "十五" => 15,
        "十六" => 16,
        "十七" => 17,
        "十八" => 18,
        "十九" => 19,
        "二十" => 20,
        "二十一" => 21,
        "二十二" => 22,
        "二十三" => 23,
        "二十四" => 24,
        "二十五" => 25,
        "二十六" => 26,
        "二十七" => 27,
        "二十八" => 28,
        "二十九" => 29,
        "三十" => 30,
        "三十一" => 31,
        "三十二" => 32,
        "三十三" => 33,
        "三十四" => 34,
        "三十五" => 35,
        "三十六" => 36,
        "三十七" => 37,
        "三十八" => 38,
        "三十九" => 39,
        "四十" => 40,
        "四十一" => 41,
        "四十二" => 42,
        "四十三" => 43,
        "四十四" => 44,
        "四十五" => 45,
        "四十六" => 46,
        "四十七" => 47,
        "四十八" => 48,
        "四十九" => 49,
        "五十" => 50,
        "五十一" => 51,
        "五十二" => 52,
        "五十三" => 53,
        "五十四" => 54,
        "五十五" => 55,
        "五十六" => 56,
        "五十七" => 57,
        "五十八" => 58,
        "五十九" => 59,
        "六十" => 60,
        "六十一" => 61,
        "六十二" => 62,
        "六十三" => 63,
        "六十四" => 64,
        "六十五" => 65,
        "六十六" => 66,
        "六十七" => 67,
        "六十八" => 68,
        "六十九" => 69,
        "七十" => 70,
        "七十一" => 71,
        "七十二" => 72,
        "七十三" => 73,
        "七十四" => 74,
        "七十五" => 75,
        "七十六" => 76,
        "七十七" => 77,
        "七十八" => 78,
        "七十九" => 79,
        "八十" => 80,
        "八十一" => 81,
        "八十二" => 82,
        "八十三" => 83,
        "八十四" => 84,
        "八十五" => 85,
        "八十六" => 86,
        "八十七" => 87,
        "八十八" => 88,
        "八十九" => 89,
        "九十" => 90,
        "九十一" => 91,
        "九十二" => 92,
        "九十三" => 93,
        "九十四" => 94,
        "九十五" => 95,
        "九十六" => 96,
        "九十七" => 97,
        "九十八" => 98,
        "九十九" => 99,
        "①" => 1,
        "②" => 2,
        "③" => 3,
        "④" => 4,
        "⑤" => 5,
        "⑥" => 6,
        "⑦" => 7,
        "⑧" => 8,
        "⑨" => 9,
        "⑩" => 10
      }.freeze

      # @note Override
      def call(context:, output:)
        output = TABLE.to_a.reverse.each_with_object(output.clone) do |(key, value), result|
          result.gsub(key, value.to_s)
        end
        {
          context: context,
          output: output
        }
      end
    end
  end
end
