# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      module NumericPartialDsl
        def gt(val)
          @subject['exclusiveMinimum'] = val
        end

        alias exclusive_minimum gt

        def gteq(val)
          @subject['minimum'] = val
        end

        alias minimum gteq

        def lt(val)
          @subject['exclusiveMaximum'] = val
        end

        alias exclusive_maximum lt

        def lteq(val)
          @subject['maximum'] = val
        end

        alias maximum lteq

        def mult_of(val)
          @subject['multipleOf'] = val
        end

        alias multiple_of mult_of
      end
    end
  end
end

