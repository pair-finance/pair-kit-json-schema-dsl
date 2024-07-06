# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      module TypePartialDsl
        module Base
          def str(&block)
            type!('string', &block)
          end

          alias string str

          def int(&block)
            type!('integer', &block)
          end

          alias integer int

          def bool(&block)
            type!('boolean', &block)
          end

          alias boolean bool

          def num(&block)
            type!('number', &block)
          end

          alias number num
          alias float num
          alias flt num

          def obj(&block)
            type!('object', &block)
          end

          alias object obj
          alias struct obj

          def arr(&block)
            type!('array', &block)
          end

          alias array arr

          def null
            type!('null')
          end

          private

          def type!(type, &block)
            _subject_['type'] << type
            @dsl.call(_subject_, builder: type, &block) if block
          end
        end

        def self.apply_to(&subject_resolver)
          Module.new do
            include Base

            private

            define_method(:_subject_, &subject_resolver)
          end
        end
      end
    end
  end
end


