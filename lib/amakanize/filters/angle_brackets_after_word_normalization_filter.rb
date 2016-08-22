module Amakanize
  module Filters
    class AngleBracketsAfterWordNormalizationFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"IS〈インフィニット・ストラトス〉 1 (オーバーラップ文庫)"`
      # @return [String] e.g. `"IS<インフィニット・ストラトス> 1 (オーバーラップ文庫)"`
      def call(string)
        string.gsub(/([[:alnum:]])[〈《](.+?)[〉》]/, '\1<\2>')
      end
    end
  end
end
