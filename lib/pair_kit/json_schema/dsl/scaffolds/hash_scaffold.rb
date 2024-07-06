module PairKit
  class JsonSchema
    class Dsl
      class HashScaffold < Scaffold
        def initialize(val)
          @hash = val
        end

        def [](name, default = nil)
          name = Miniflector.camel_case(name)
          return @hash[name] if @hash.key?(name)

          @hash[name] = Scaffold.wrap(default)
        end

        def []=(name, val)
          name = Miniflector.camel_case(name)
          @hash[name] = Scaffold.wrap(val)
        end

        def to_schema
          @hash.transform_values(&:to_schema)
        end
      end
    end
  end
end

