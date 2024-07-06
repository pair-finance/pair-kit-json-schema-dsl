module PairKit
  class JsonSchema
    class Dsl
      class Scaffold
        def self.wrap(val)
          case val
          when Scaffold then val
          when Hash then HashScaffold.new(val)
          when Array then ArrayScaffold.new(val)
          else ScalarScaffold.new(val)
          end
        end
      end
    end
  end
end
