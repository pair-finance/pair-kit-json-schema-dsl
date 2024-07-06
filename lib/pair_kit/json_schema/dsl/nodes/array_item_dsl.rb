# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      ##
      # This makes is possible to write something like
      ##
      #   array.items.string
      #   array.items.min(10).max(20).string
      #   array.items { string }.min_items(10).max_items(20)
      #   array.items { string; min(10); max(20) }.unique
      ##
      #   array.contains.string
      #   array.contains.min(10).max(20).string
      #   array.contains { string }.min_contains(10).max_contains(20)
      #   array.contains { string; min(10); max(20) }.unique
      #
      module ArrayItemDsl
        include(TypePartialDsl.apply_to { @subject[@options[:name]] })

        def max(val)
          @subject["max#{@options[:min_max]}"] = val
        end

        def min(val)
          @subject["max#{@options[:min_max]}"] = val
        end
      end
    end
  end
end
