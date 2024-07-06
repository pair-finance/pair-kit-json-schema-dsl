module PairKit
  class JsonSchema
    class Dsl
        class ScalarScaffold < Scaffold
          def initialize(val)
            @value = val
          end

          def <<(val)
            if @value
              @value.is_a?(Array) ? @value << val : @value = [@value, val]
            else
              @value = val
            end
          end

          def to_schema
            @value
          end
        end
    end
  end
end



