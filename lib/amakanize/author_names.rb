# frozen_string_literal: true

module Amakanize
  class AuthorNames
    include ::Enumerable

    AUTHOR_NAME_SEPARATORS = %w[
      ,
      ，
      、
    ].freeze

    AUTHOR_NAME_SEPARATORS_REGEXP = ::Regexp.union(AUTHOR_NAME_SEPARATORS)

    # @param raw [String]
    def initialize(raw)
      @raw = raw
    end

    # @note Implementation for Enumerable
    def each(&block)
      author_names.each(&block)
    end

    private

    # @private
    # @return [Array<Amakanize::AuthorName>]
    def author_names
      segments.map do |segment|
        ::Amakanize::AuthorName.new(segment)
      end.reject do |author_name|
        author_name.to_s.empty?
      end
    end

    # @private
    # @return [String]
    attr_reader :raw

    # @private
    # @return [Array<String>]
    def segments
      raw.split(AUTHOR_NAME_SEPARATORS_REGEXP)
    end
  end
end
