module Amakanize
  module Filters
    class DashBetweenAlhabetsNormalizationFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"D.Grayーman"`
      # @return [String] e.g. `"D.Gray-man"`
      def call(string)
        string.gsub(/(\w)ー(\w)/, '\1-\2')
      end
    end
  end
end
