require "amakanize/filterable"

module Amakanize
  class BookPosition
    include ::Amakanize::Filterable

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
          ::Amakanize::Filters::BookPositionInBracketDetectionFilter,
          ::Amakanize::Filters::TrailingDoubleParenthesesSinglizationFilter,
          ::Amakanize::Filters::TrailingParenthesesDeletionFilter,
          ::Amakanize::Filters::TrailingDashDeletionFilter,
          ::Amakanize::Filters::TrailingSeriesNamePayloadDeletionFilter,
          ::Amakanize::Filters::BookPositionInWordsDetectionFilter,
          ::Amakanize::Filters::BookPositionAtEndDetectionFilter,
          ::Amakanize::Filters::BookPositionClearingFilter,
          ::Amakanize::Filters::VideoPositionNumberConversionFilter,
          ::Amakanize::Filters::BookPositionNumberCanonicalizationFilter,
        ]
      end
    end
  end
end
