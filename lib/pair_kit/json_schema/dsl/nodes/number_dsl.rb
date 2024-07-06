# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      module NumberDsl
        include CommonPartialDsl
        include NumericPartialDsl
      end
    end
  end
end

