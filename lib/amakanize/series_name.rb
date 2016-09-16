module Amakanize
  class SeriesName
    class << self
      # @return [Array<Amakan::Filters::BaseFilter>]
      def filters
        @filters ||= [
          ::Amakanize::Filters::HtmlUnescapeFilter.new,
          ::Amakanize::Filters::NormalizationFilter.new,
          ::Amakanize::Filters::ContinuousSpacesNormalizationFilter.new,
          ::Amakanize::Filters::HyphenMinusNormalizationFilter.new,
          ::Amakanize::Filters::DashBetweenAlhabetsNormalizationFilter.new,
          ::Amakanize::Filters::BracketsNormalizationFilter.new,
          ::Amakanize::Filters::SpacesBetweenExclamationsDeletionFilter.new,
          ::Amakanize::Filters::SpaceBetweenExclamationAndBracketDeletionFilter.new,
          ::Amakanize::Filters::ObviousVolumeNumberDeletionFilter.new,
          ::Amakanize::Filters::TrailingParenthesesDeletionFilter.new,
          ::Amakanize::Filters::TrailingDashDeletionFilter.new,
          ::Amakanize::Filters::TrailingSeriesNamePayloadDeletionFilter.new,
          ::Amakanize::Filters::TrailingVolumeNumberDeletionFilter.new,
          ::Amakanize::Filters::TrailingSeriesNamePayloadDeletionFilter.new,
        ]
      end
    end

    # @param raw [String]
    def initialize(raw)
      @raw = raw
    end

    # @note Override
    def to_s
      self.class.filters.inject(@raw) do |result, filter|
        filter.call(result)
      end
    end
  end
end
