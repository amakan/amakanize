# frozen_string_literal: true

require 'amakanize/filters/base_filter'
require 'cgi'

module Amakanize
  module Filters
    class HtmlUnescapeFilter < ::Amakanize::Filters::BaseFilter
      # @note Override
      # @param output [String] e.g. `"&lt;ハノカゲ&gt;"`
      # @return [Hash] e.g. `"ハノカゲ"`
      def call(context:, output:)
        {
          context: context,
          output: ::CGI.unescapeHTML(output)
        }
      end
    end
  end
end
