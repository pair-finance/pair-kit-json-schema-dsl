# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      module ArrayDsl
        include CommonPartialDsl
        include(TypePartialDsl.apply_to { @subject['items', {}] })

        def items(&block)
          @dsl.call(@subject, builder: :array_item, name: 'items', min_max: 'Items', &block)
        end

        def prefix_item(&block)
          subject['prefixItems', []] << {}
          @dsl.call(@subject['prefixItems'].last, builder: :schema, &block)
        end

        def contains(&block)
          @dsl.call(@subject, builder: :array_item, name: 'contains', min_max: 'Contains', &block)
        end

        def min_items(val)
          @subject['minItems'] = val
        end

        def max_items(val)
          @subject['maxItems'] = val
        end

        def max_contains(val)
          @subject['maxContains'] = val
        end

        def min_contains(val)
          @subject['minContains'] = val
        end

        def unique_items
          @subject['uniqueItems'] = true
        end

        def duplicated_items
          @subject['uniqueItems'] = false
        end
      end
    end
  end
end

