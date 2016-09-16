module Amakanize
  module Filters
    class TrailingParenthesesDeletionFilter < BaseFilter
      # @note Override
      # @param output [String] e.g. `"魔法使いの嫁 通常版 4 (BLADE COMICS)"`
      # @return [Hash] e.g. `"魔法使いの嫁 通常版 4"`
      def call(context:, output:)
        unless context[:volume_number_removed]
          output = output.sub(/\s*\([^\(]+\)\z/, "")
        end
        {
          context: context,
          output: output,
        }
      end
    end
  end
end
