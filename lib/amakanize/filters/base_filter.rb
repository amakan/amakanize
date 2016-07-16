module Amakanize
  module Filters
    class BaseFilter
      # @param string [String]
      # @return [String]
      def call(string)
        raise ::NotImplementedError
      end
    end
  end
end
