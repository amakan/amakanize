# frozen_string_literal: true

require 'amakanize/filters/base_filter'

module Amakanize
  module Filters
    class RoleNameDeletionFilter < ::Amakanize::Filters::BaseFilter
      PATTERN_OF_ROLE_NAME = ::Regexp.union(
        %w[
          イラスト
          カバーデザイン
          キャラクター原案
          原作
          原案
          漫画
        ]
      )

      # @note Override
      # @param output [String] e.g. `"漫画:ハノカゲ"`,  `"ハノカゲ:漫画"`
      # @return [Hash] e.g. `"ハノカゲ"`
      def call(context:, output:)
        {
          context: context,
          output: output
            .gsub(%r{\A#{PATTERN_OF_ROLE_NAME}[:/]}, '')
            .gsub(%r{[:/]#{PATTERN_OF_ROLE_NAME}\z}, '')
            .gsub(/\A\(#{PATTERN_OF_ROLE_NAME}(?:・#{PATTERN_OF_ROLE_NAME})*\)/, '')
            .gsub(/\(#{PATTERN_OF_ROLE_NAME}(?:・#{PATTERN_OF_ROLE_NAME})*\)\z/, '')
        }
      end
    end
  end
end
