# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      # See https://json-schema.org/understanding-json-schema/reference/object
      module PropertyDsl
        include TypePartialDsl.apply_to { @subject['properties'][@options[:name]] }

        def required
          @subject['required', []] << Miniflector.camel_case(@options[:name])
        end

        def optional
          @subject['required', []].delete(Miniflector.camel_case(@options[:name]))
        end

        def dependent_on(*dependencies)
          @subject['dependentRequired', {}][@options[:name], []] += dependencies
        end
      end
    end
  end
end

