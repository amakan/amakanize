# frozen_string_literal: true

require 'amakanize/filterable'

module Amakanize
  class AuthorName
    include ::Amakanize::Filterable

    class << self
      # @note Override
      def filter_classes
        @filter_classes ||= [
          ::Amakanize::Filters::HtmlUnescapeFilter,
          ::Amakanize::Filters::NormalizationFilter,
          ::Amakanize::Filters::HyphenMinusNormalizationFilter,
          ::Amakanize::Filters::ParenthesesDeletionFilter,
          ::Amakanize::Filters::RoleNameDeletionFilter,
          ::Amakanize::Filters::TrailingAuthorNamePayloadDeletionFilter,
          ::Amakanize::Filters::SpaceDeletionFilter
        ]
      end
    end
  end
end
