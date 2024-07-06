# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
    # See https://json-schema.org/understanding-json-schema/reference/object
      module SchemaDsl
        include CommonPartialDsl
        include(TypePartialDsl.apply_to { @subject })
      end
    end
  end
end


