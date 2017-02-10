require "active_support/concern"

module Amakanize
  module Filterable
    extend ::ActiveSupport::Concern

    # @param raw [String]
    def initialize(raw)
      @raw = raw
    end

    # @note Override
    def to_s
      filters.inject(context: {}, output: raw) do |result, filter|
        filter.call(result)
      end[:output]
    end

    private

    # @private
    # @return [Array<Amakanize::Filters::BaseFilter>]
    def filters
      @filters ||= self.class.filter_classes.map(&:new)
    end

    # @private
    # @return [String]
    def raw
      @raw
    end

    module ClassMethods
      # @return [Array<Class>]
      def filter_classes
        raise ::NotImplementedError
      end
    end
  end
end
