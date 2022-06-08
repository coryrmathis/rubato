# frozen_string_literal: true

RSpec.describe Rubato do
  it "has a version number" do
    expect(Rubato::VERSION).not_to be nil
  end

  it "has a CHROMATIC_SCALE constant of the correct length" do
    expect(Rubato::CHROMATIC_SCALE.length).to eq(12)
  end
  # describe ".practice" do
  #   it "returns an array of n notes in a key" do
  #     num_notes = 10
  #     key = "C"
  #     notes = Rubato.practice(num_notes, key)

  #     expect(notes.length).to eq(10)
  #   end
  # end
end
