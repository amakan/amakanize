module Amakanize
  class AuthorName
    class << self
      # @return [Array<Amakan::Filters::BaseFilter>]
      def filters
        @filters ||= [
          ::Amakanize::Filters::HtmlUnescapeFilter.new,
          ::Amakanize::Filters::NormalizationFilter.new,
          ::Amakanize::Filters::ParenthesesDeletionFilter.new,
          ::Amakanize::Filters::RoleNameDeletionFilter.new,
          ::Amakanize::Filters::TrailingAuthorNamePayloadDeletionFilter.new,
          ::Amakanize::Filters::SpaceDeletionFilter.new,
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
