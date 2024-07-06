# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      # See https://www.learnjsonschema.com/2020-12/applicator/
      module ObjectDsl
        include CommonPartialDsl

        def prop(name, &block)
          @subject['properties', {}][name] = {}
          @dsl.call(@subject, builder: :property, name: name, &block)
        end

        def pattern_props

        end

        def additional_properties

        end

        def prop_names

        end

        def dependent_schemas

        end

        def min_props(val)
          @subject['minLength'] = val
        end

        def dependency(name, *dependent)
          @subject['dependentRequired', {}][name, []] += dependent
        end

        def max_props(val)
          @subject['maxLength'] = val
        end

        def required(*props)
          @subject['required', []] += props
        end
      end
    end
  end
end


