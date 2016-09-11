module Amakanize
  module Filters
    class RoleNameDeletionFilter < BaseFilter
      PATTERN_OF_ROLE_NAME = ::Regexp.union(
        %w(
          イラスト
          カバーデザイン
          キャラクター原案
          原作
          原案
          漫画
        )
      )

      # @note Override
      # @param string [String] e.g. `"漫画:ハノカゲ"`,  `"ハノカゲ:漫画"`
      # @return [String] e.g. `"ハノカゲ"`
      def call(string)
        string
          .gsub(%r<\A#{PATTERN_OF_ROLE_NAME}[:/]>, "")
          .gsub(%r<[:/]#{PATTERN_OF_ROLE_NAME}\z>, "")
          .gsub(%r<\A\(#{PATTERN_OF_ROLE_NAME}(?:・#{PATTERN_OF_ROLE_NAME})*\)>, "")
          .gsub(%r<\(#{PATTERN_OF_ROLE_NAME}(?:・#{PATTERN_OF_ROLE_NAME})*\)\z>, "")
      end
    end
  end
end
