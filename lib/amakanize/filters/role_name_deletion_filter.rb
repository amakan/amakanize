module Amakanize
  module Filters
    class RoleNameDeletionFilter < BaseFilter
      ROLE_NAMES = %w(
        イラスト
        原作
        原案
        漫画
      )

      # @note Override
      # @param string [String] e.g. `"漫画:ハノカゲ"`,  `"ハノカゲ:漫画"`
      # @return [String] e.g. `"ハノカゲ"`
      def call(string)
        string.gsub(%r<\A#{::Regexp.union(ROLE_NAMES)}[:/]>, "").gsub(%r<[:/]#{::Regexp.union(ROLE_NAMES)}\z>, "")
      end
    end
  end
end
