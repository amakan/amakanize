require "cgi"

module Amakanize
  module Filters
    class HtmlUnescapeFilter < BaseFilter
      # @note Override
      # @param string [String] e.g. `"&lt;ハノカゲ&gt;"`
      # @return [String] e.g. `"ハノカゲ"`
      def call(string)
        ::CGI.unescapeHTML(string)
      end
    end
  end
end
