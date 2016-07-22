module Amakanize
  module Filters
    class TrailingParenthesesDeletionFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"魔法使いの嫁 通常版 4 (BLADE COMICS)"`
      # @return [String] e.g. `"魔法使いの嫁 通常版 4"`
      def call(string)
        string.gsub(/\s*[\(（〈《【「『【［\[〔｛\{«‹〘〚].*/, "").gsub(/\s*~.+~\z/, "")
      end
    end
  end
end
