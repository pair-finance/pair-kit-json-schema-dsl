module PairKit
  class JsonSchema
    class Dsl
      class ArrayScaffold < Scaffold
        def initialize(val)
          @array = val.is_a?(ArrayScaffold) ? val.array : val.map { |x| Scaffold.wrap(x) }
        end


        def <<(item)
          @array << Scaffold.wrap(item)
        end

        def to_schema
          @array.map(&:to_schema)
        end

        def first
          @array.first
        end

        def last
          @array.last
        end

        def +(arr)
          ArrayScaffold.new([]).tap do |scf|
            scf.array = array +  ArrayScaffold.new(arr).array
          end
        end

        protected

        attr_accessor :array
      end
    end
  end
end

