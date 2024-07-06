# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      module CorePartialDsl
        def schema(schema)
          @subject['$schema'] = schema
        end

        def id(id)
          @subject['$id'] = id
        end

        def ref(ref)
          @subject['$ref'] = ref
        end

        def comment(comment)
          @subject['$comment'] = comment
        end

        def define(name, &block)
          @dsl.(@subject['$defs', {}][name, {}], &block)
        end

        alias dfn define

        def anchor(anchor)
          @subject['$anchor'] = anchor
        end

        def dynamic_anchor(anchor)
          @subject['$dynamicAnchor'] = anchor
        end

        def dynamic_ref(ref)
          @subject['$dynamicRef'] = ref
        end

        def vocabulary(vocab)
          @subject['$vocabulary', {}][vocab] = true
        end
      end
    end
  end
end

