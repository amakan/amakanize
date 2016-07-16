module Amakanize
  module Filters
    class ParenthesesDeletionFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"ぽんかん(8)"`
      # @return [String] e.g. `"ぽんかん8"`
      def call(string)
        string.gsub(/\((\d+)\)/, '\1')
      end
    end
  end
end
