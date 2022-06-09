module Rubato
  class Note
    NAMES = ["A", "A#/Bb", "B", "C", "C#/Db", "D", "D#/Eb", "E", "F", "F#/Gb", "G", "G#/Ab"]
    attr_reader :name, :frequency

    def initialize(name:, frequency:)
      @name = name 
      @frequency = frequency
    end
  end
end
