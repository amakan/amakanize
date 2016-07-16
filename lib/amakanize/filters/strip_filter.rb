module Amakanize
  module Filters
    class StripFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `" 　ハノカゲ 　"`
      # @return [String] e.g. `"ハノカゲ"`
      def call(string)
        string.gsub(/\A[[:space:]]+/, "").gsub(/[[:space:]]+\z/, "")
      end
    end
  end
end
