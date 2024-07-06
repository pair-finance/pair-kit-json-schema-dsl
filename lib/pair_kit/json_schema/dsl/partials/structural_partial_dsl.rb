# frozen_string_literal: true

module PairKit
  class JsonSchema
    class Dsl
      module StructuralPartialDsl
        def any_of(&block)
          append_applicator('anyOf', &block)
        end

        alias may_be any_of
        alias or any_of

        def one_of(&block)
          append_applicator('anyOf', &block)
        end

        alias may_be_once one_of
        alias xor one_of

        def all_of(&block)
          append_applicator('allOf', &block)
        end

        alias must_be all_of
        alias and all_of

        def _then(&block)
          use_applicator('then', &block)
        end

        alias then_check _then

        def _if(&block)
          use_applicator('if', &block)
        end

        alias if_fits _if

        def _else(&block)
          use_applicator('else', &block)
        end

        alias else_check _else

        def _not(&block)
          use_applicator('not', &block)
        end

        alias must_not_be _not
        alias prohibit _not

        private

        def append_applicator(name, &block)
          @dsl.call(@subject[name, []] << {}, builder: @options[:builder], &block)
        end

        def use_applicator(name, &block)
          @dsl.call(@subject[name, {}], builder: @options[:builder], &block)
        end
      end
    end
  end
end

