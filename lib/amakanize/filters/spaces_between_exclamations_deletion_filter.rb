require "amakanize/filters/base_filter"

module Amakanize
  module Filters
    class SpacesBetweenExclamationsDeletionFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      # @param output [String] e.g. `"ばくおん! !"`
      # @return [Hash] e.g. `"ばくおん!!"`
      def call(context:, output:)
        {
          context: context,
          output: output.gsub(/!\s+!/, "!!"),
        }
      end
    end
  end
end
