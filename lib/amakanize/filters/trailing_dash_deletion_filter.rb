# frozen_string_literal: true

require 'amakanize/filters/base_filter'

module Amakanize
  module Filters
    class TrailingDashDeletionFilter < ::Amakanize::Filters::BaseFilter
      TOKENS = %w[
        ̃
        ̰
        ̴
        ‒
        –
        —
        ―
        ⁓
        〜
        〰
        ˜
        ˷
        ~
        ～
        ∼
        ─
      ].freeze

      # @note Override
      # @param output [String] e.g. `"アド・アストラ 1 ─スキピオとハンニバル─"`
      # @return [Hash] e.g. `"アド・アストラ 1"`
      def call(context:, output:)
        {
          context: context,
          output: output.gsub(/\s*#{::Regexp.union(TOKENS)}.*/, '')
        }
      end
    end
  end
end
