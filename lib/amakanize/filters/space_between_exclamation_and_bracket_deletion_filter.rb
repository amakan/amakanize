module Amakanize
  module Filters
    class SpaceBetweenExclamationAndBracketDeletionFilter < BaseFilter
      # @note Override
      # @param output [String] e.g. `"まおゆう魔王勇者 「この我のものとなれ、勇者よ」「断る! 」"`
      # @return [Hash] e.g. `"まおゆう魔王勇者 「この我のものとなれ、勇者よ」「断る!」"`
      def call(context:, output:)
        {
          context: context,
          output: output.gsub(/!\s+」/, "!」"),
        }
      end
    end
  end
end
