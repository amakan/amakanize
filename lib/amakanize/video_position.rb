# frozen_string_literal: true

require 'amakanize/filterable'

module Amakanize
  class VideoPosition
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
          ::Amakanize::Filters::VideoPositionDetectionFilter,
          ::Amakanize::Filters::VideoPositionNumberConversionFilter
        ]
      end
    end
  end
end
