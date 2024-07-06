# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      require 'pair_kit/dsl_factory'
      require 'pair_kit/miniflector'

      require_relative 'dsl/version'

      require_relative 'dsl/scaffolds/scaffold'
      require_relative 'dsl/scaffolds/hash_scaffold'
      require_relative 'dsl/scaffolds/array_scaffold'
      require_relative 'dsl/scaffolds/scalar_scaffold'

      require_relative 'dsl/partials/const_partial_dsl'
      require_relative 'dsl/partials/core_partial_dsl'
      require_relative 'dsl/partials/enum_partial_dsl'
      require_relative 'dsl/partials/meta_data_partial_dsl'
      require_relative 'dsl/partials/null_partial_dsl'
      require_relative 'dsl/partials/numeric_partial_dsl'
      require_relative 'dsl/partials/structural_partial_dsl'
      require_relative 'dsl/partials/type_partial_dsl'
      require_relative 'dsl/partials/common_partial_dsl'

      require_relative 'dsl/nodes/array_dsl'
      require_relative 'dsl/nodes/array_item_dsl'
      require_relative 'dsl/nodes/boolean_dsl'
      require_relative 'dsl/nodes/number_dsl'
      require_relative 'dsl/nodes/object_dsl'
      require_relative 'dsl/nodes/property_dsl'
      require_relative 'dsl/nodes/schema_dsl'
      require_relative 'dsl/nodes/string_dsl'

      BASE_DSL = DslFactory.new do
        configure_builder :schema, SchemaDsl
        configure_builder :array, ArrayDsl
        configure_builder :object, ObjectDsl
        configure_builder :number, NumberDsl
        configure_builder :integer, NumberDsl
        configure_builder :string, StringDsl
        configure_builder :property, PropertyDsl
        configure_builder :array_item, ArrayItemDsl
      end

      def build(&block)
        BASE_DSL.build(Scaffold.wrap({}), &block).to_schema
      end
    end
  end
end
