module Amakanize
  module Filters
    class BaseFilter
      # @param context [Hash]
      # @param output [String]
      # @return [Hash]
      def call(context:, output:)
        raise ::NotImplementedError
      end
    end
  end
end
