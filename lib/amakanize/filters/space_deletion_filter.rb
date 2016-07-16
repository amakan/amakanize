module Amakanize
  module Filters
    class SpaceDeletionFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"渡 航"`
      # @return [String] e.g. `"渡航"`
      def call(string)
        string.gsub(/[[:space:]]+/, "")
      end
    end
  end
end
