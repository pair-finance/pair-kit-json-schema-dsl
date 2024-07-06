# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      module ConstPartialDsl
        def const(value)
          @subject['const'] = value
        end

        alias eq const
      end
    end
  end
end

