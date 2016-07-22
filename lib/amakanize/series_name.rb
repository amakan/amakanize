module Amakanize
  class SeriesName
    class << self
      # @return [Array<Amakan::Filters::BaseFilter>]
      def filters
        @filters ||= [
          ::Amakanize::Filters::HtmlUnescapeFilter.new,
          ::Amakanize::Filters::NormalizationFilter.new,
          ::Amakanize::Filters::TrailingParenthesesDeletionFilter.new,
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
    # def to_s
    #   @raw
    #     .gsub(/[[:space:]]*[\(（〈《【「『【［\[〔｛\{«‹〘〚].*/, "")
    #     .gsub(/[[:space:]]*通常版/, "")
    #     .gsub(/[[:space:]]+[１-９\d①②③④⑤⑥⑦⑧⑨⑩].*/, "")
    #     .gsub(/[[:space:]]*[１-９\d①②③④⑤⑥⑦⑧⑨⑩]+巻?\z/, "")
    #     .gsub(/[[:space:]]*~.+~/, "")
    #     .gsub(/\A[[:space:]]+|[[:space:]]+\z/, "")
    # end

    # @note Override
    def to_s
      self.class.filters.inject(@raw) do |result, filter|
        filter.call(result)
      end
    end
  end
end
