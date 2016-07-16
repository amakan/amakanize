module Amakanize
  module Filters
    class RoleNameDeletionFilter < BaseFilter
      ROLE_NAMES = %w(
        原作
        原案
        漫画
      )

      # @note Override
      # @param string [String] e.g. `"漫画:ハノカゲ"`
      # @return [String] e.g. `"ハノカゲ"`
      def call(string)
        string.gsub(%r<\A#{::Regexp.union(ROLE_NAMES)}[:/]>, "")
      end
    end
  end
end
