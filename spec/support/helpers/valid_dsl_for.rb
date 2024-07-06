RSpec.shared_examples "a valid DSL" do |name|
  base_path = FIXTURES_PATH.join('schemas').join(name.tr(' ', '_'))
  yaml_path = base_path.sub_ext('.yml')
  ruby_path = base_path.sub_ext('.rb')

  context "for #{name}" do
    let(:reference) { YAML.load_file(yaml_path) }

    subject { builder.build { eval(File.read(ruby_path))} }

    it { is_expected.to eq reference }
  end
  # measurement_methods.each do |measurement_method|
  #   it "should return #{measurement} from ##{measurement_method}" do
  #     expect(subject.send(measurement_method)).to eq(measurement)
  #   end
  # end
end
