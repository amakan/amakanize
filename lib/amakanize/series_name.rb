module Amakanize
  class SeriesName
    class << self
      # @return [Array<Class>]
      def filter_classes
        @filter_classes ||= [
          ::Amakanize::Filters::HtmlUnescapeFilter,
          ::Amakanize::Filters::NormalizationFilter,
          ::Amakanize::Filters::ContinuousSpacesNormalizationFilter,
          ::Amakanize::Filters::HyphenMinusNormalizationFilter,
          ::Amakanize::Filters::DashBetweenAlhabetsNormalizationFilter,
          ::Amakanize::Filters::BracketsNormalizationFilter,
          ::Amakanize::Filters::SpacesBetweenExclamationsDeletionFilter,
          ::Amakanize::Filters::SpaceBetweenExclamationAndBracketDeletionFilter,
          ::Amakanize::Filters::ObviousVolumeNumberDeletionFilter,
          ::Amakanize::Filters::TrailingParenthesesDeletionFilter,
          ::Amakanize::Filters::TrailingDashDeletionFilter,
          ::Amakanize::Filters::TrailingSeriesNamePayloadDeletionFilter,
          ::Amakanize::Filters::TrailingVolumeNumberDeletionFilter,
          ::Amakanize::Filters::TrailingSeriesNamePayloadDeletionFilter,
        ]
      end
    end

    # @param raw [String]
    def initialize(raw)
      @raw = raw
    end

    # @note Override
    def to_s
      filters.inject(context: {}, output: @raw) do |result, filter|
        filter.call(result)
      end[:output]
    end

    private

    def filters
      @filters ||= self.class.filter_classes.map(&:new)
    end
  end
end
