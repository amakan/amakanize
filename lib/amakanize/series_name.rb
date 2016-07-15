module Amakanize
  class SeriesName
    # @param raw [String]
    def initialize(raw)
      @raw = raw
    end

    # @note Override
    def to_s
      @raw
        .gsub(/[[:space:]]*[\(（〈《【「『【［\[〔｛\{«‹〘〚].*/, "")
        .gsub(/[[:space:]]*通常版/, "")
        .gsub(/[[:space:]]+[１-９\d①②③④⑤⑥⑦⑧⑨⑩].*/, "")
        .gsub(/[[:space:]]*[１-９\d①②③④⑤⑥⑦⑧⑨⑩]+巻?\z/, "")
        .gsub(/\A[[:space:]]+|[[:space:]]+\z/, "")
    end
  end
end
