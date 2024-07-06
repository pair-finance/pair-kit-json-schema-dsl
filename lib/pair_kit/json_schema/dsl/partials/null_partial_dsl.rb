# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      # See https://www.learnjsonschema.com/2020-12/validation/const/

      module NullPartialDsl
        def null
          @subject['type'] << 'null'
        end
      end
    end
  end
end


