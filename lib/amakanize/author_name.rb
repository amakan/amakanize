module Amakanize
  class AuthorName
    class << self
      # @return [Array<Class>]
      def filter_classes
        @filter_classes ||= [
          ::Amakanize::Filters::HtmlUnescapeFilter,
          ::Amakanize::Filters::NormalizationFilter,
          ::Amakanize::Filters::HyphenMinusNormalizationFilter,
          ::Amakanize::Filters::ParenthesesDeletionFilter,
          ::Amakanize::Filters::RoleNameDeletionFilter,
          ::Amakanize::Filters::TrailingAuthorNamePayloadDeletionFilter,
          ::Amakanize::Filters::SpaceDeletionFilter,
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
