# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      # See https://www.learnjsonschema.com/2020-12/meta-data/
      module MetaDataPartialDsl
        def title(title)
          @subject['title'] = title
        end

        def description(description = nil, &block)
          @subject['description'] = description || block&.call
        end

        def default(val)
          @subject['default'] = val
        end

        def deprecated
          @subject['deprecated'] = true
        end

        def example(example = nil,  &block)
          @subject['examples', []]  << example || block&.call
        end

        def read_only
          @subject['readOnly'] = true
        end

        def writable
          @subject['readOnly'] = false
        end

        def write_only
          @subject['writeOnly'] = true
        end

        def readable
          @subject['writeOnly'] = false
        end
      end
    end
  end
end


