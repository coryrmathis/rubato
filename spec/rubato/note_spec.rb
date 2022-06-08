require "spec_helper"

RSpec.describe Rubato::Note do
  describe ".initialize" do
    it "raises an error if it's not provided a valid note name" do
      expect { Rubato::Note.new("asdf") }.to raise_error(Rubato::InvalidNoteNameError)
    end
  end
end
