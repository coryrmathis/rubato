module Rubato
  class Scale
    include Enumerable
    CHROMATIC = ["A", "A#", "Bb", "B", "C", "C#", "Db", "D", "D#", "Eb", "E", "F", "F#", "Gb", "G", "G#", "Ab"]
    SHARP_CHROMATIC = CHROMATIC.reject{ |note| note.include?("b") }
    FLAT_CHROMATIC = CHROMATIC.reject{ |note| note.include?("#") }

    TYPES = [
      chromatic: "1"*12, # HHHHHHHHHHHH
      major: "2212221" # WWHWWWH
    ]

    attr_reader :root, :type

    def initialize(root, options = {})
      raise unless acceptable_root_types.include?(root.class)
      @root = root
      @type = options.fetch(:type, :chromatic)
    end

    def spelling
      if root_index == 0
        chromatic
      else
        chromatic[root_index..-1]+chromatic.slice!(0..root_index-1)
      end
    end

  def root_index
    chromatic.find_index(root)
  end

  def chromatic 
    root.include?("b") ? FLAT_CHROMATIC : SHARP_CHROMATIC
  end

    private

    def acceptable_root_types
      [Rubato::Note, String]
    end
  end
end
