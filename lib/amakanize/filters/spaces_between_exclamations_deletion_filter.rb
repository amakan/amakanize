module Amakanize
  module Filters
    class SpacesBetweenExclamationsDeletionFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"ばくおん! !"`
      # @return [String] e.g. `"ばくおん!!"`
      def call(string)
        string.gsub(/!\s+!/, "!!")
      end
    end
  end
end
