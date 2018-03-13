require "amakanize/filterable"

module Amakanize
  class SeriesName
    include ::Amakanize::Filterable

    class << self
      # @return [Array<Class>]
      def filter_classes
        @filter_classes ||= [
          ::Amakanize::Filters::HtmlUnescapeFilter,
          ::Amakanize::Filters::NormalizationFilter,
          ::Amakanize::Filters::ContinuousSpacesNormalizationFilter,
          ::Amakanize::Filters::HyphenMinusNormalizationFilter,
          ::Amakanize::Filters::DashBetweenAlphabetsNormalizationFilter,
          ::Amakanize::Filters::BracketsNormalizationFilter,
          ::Amakanize::Filters::SpacesBetweenExclamationsDeletionFilter,
          ::Amakanize::Filters::SpaceBetweenExclamationAndBracketDeletionFilter,
          ::Amakanize::Filters::ObviousVolumeNumberDeletionFilter,
          ::Amakanize::Filters::TrailingDoubleParenthesesSinglizationFilter,
          ::Amakanize::Filters::TrailingParenthesesDeletionFilter,
          ::Amakanize::Filters::TrailingDashDeletionFilter,
          ::Amakanize::Filters::TrailingSeriesNamePayloadDeletionFilter,
          ::Amakanize::Filters::TrailingVolumeNumberDeletionFilter,
          ::Amakanize::Filters::TrailingSeriesNamePayloadDeletionFilter,
          ::Amakanize::Filters::TrailingSymbolDeletionFilter,
        ]
      end
    end
  end
end
