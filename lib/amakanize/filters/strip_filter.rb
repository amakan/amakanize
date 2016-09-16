module Amakanize
  module Filters
    class StripFilter < BaseFilter
      # @note Override
      # @param output [String] e.g. `" 　ハノカゲ 　"`
      # @return [Hash] e.g. `"ハノカゲ"`
      def call(context:, output:)
        {
          context: context,
          output: output.strip,
        }
      end
    end
  end
end
