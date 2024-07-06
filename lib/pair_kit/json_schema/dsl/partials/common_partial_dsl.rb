# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      module CommonPartialDsl
        include CorePartialDsl
        include MetaDataPartialDsl
        include ConstPartialDsl
        include EnumPartialDsl
        include StructuralPartialDsl
        include NullPartialDsl
      end
    end
  end
end

