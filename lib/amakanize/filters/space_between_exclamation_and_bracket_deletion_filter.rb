module Amakanize
  module Filters
    class SpaceBetweenExclamationAndBracketDeletionFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"まおゆう魔王勇者 「この我のものとなれ、勇者よ」「断る! 」"`
      # @return [String] e.g. `"まおゆう魔王勇者 「この我のものとなれ、勇者よ」「断る!」"`
      def call(string)
        string.gsub(/!\s+」/, "!」")
      end
    end
  end
end
