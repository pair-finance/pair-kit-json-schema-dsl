# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      # See https://www.learnjsonschema.com/2020-12/validation/enum/
      module EnumPartialDsl
        def enum(*args)
          @subject['enum', []] += args
        end

        alias in enum
      end
    end
  end
end


