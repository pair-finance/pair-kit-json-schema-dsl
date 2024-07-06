describe PairKit::JsonSchema::Dsl do
  let(:builder) { described_class.new }

  it_behaves_like 'a valid DSL', 'array of strings'
  it_behaves_like 'a valid DSL', 'simple object'
end
