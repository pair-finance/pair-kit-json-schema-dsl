# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
    # See https://www.learnjsonschema.com/2020-12/validation/
      module StringDsl
        include CommonPartialDsl

        def min_len(val)
          @subject['minLength'] = val
        end

        alias len_gteq min_len

        def pattern(re)
          @subject['pattern'] = re
        end

        alias re pattern

        def max_len(val)
          @subject['maxLength'] = val
        end

        alias len_lteq max_len

        def len_eq(val)
          min_len(val)
          max_len(val)
        end
      end
    end
  end
end

