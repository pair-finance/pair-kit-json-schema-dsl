# PairKit::JsonSchema::Dsl

Ruby DSL to build Json Schemas 

---
**NOTE**

This gem is under heavy developmetn. Don't use it now, wait until v.0.1.0

---


## Usage

In your ```Gemfile```:

```ruby
gem 'pair_kit_json_schema_dsl'
```

In your code:

```ruby
require 'pari_kit/json_schema/dsl'
```

### Example

```ruby
dsl = PairKit::JsonSchema::Dsl.new

array_of_strings = dsl.build { arr { str } }

simple_object = dsl.build do 
  object do
    prop(:first_name).required.str
    prop(:last_name).required.str
    prop(:middle_name).str.null
  end 
end

```

