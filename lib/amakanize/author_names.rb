module Amakanize
  class AuthorNames
    include ::Enumerable

    AUTHOR_NAME_SEPARATORS = %w(
      ,
      ，
      、
    )

    # @param raw [String]
    def initialize(raw)
      @raw = raw
    end

    def each(&block)
      @raw.split(::Regexp.union(AUTHOR_NAME_SEPARATORS)).map do |author_name|
        ::Amakanize::AuthorName.new(author_name)
      end.each(&block)
    end
  end
end
