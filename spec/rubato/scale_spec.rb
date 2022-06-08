require "spec_helper"

RSpec.describe Rubato::Scale do
  describe ".initialize" do
    it "accepts a string or Rubato::Note for its root parameter" do
      string_note = "C"
      class_note = Rubato::Note.new(string_note)

      expect { Rubato::Scale.new(string_note) }.not_to raise_error
      expect { Rubato::Scale.new(class_note) }.not_to raise_error
    end
  end

  describe "#to_s" do
    it "returns a string interpretation of the scale" do
      scale = Rubato::Scale.new("C", type: :major)

      expect(scale.to_s).to eq("CDEFGAB")
    end
  end
end
