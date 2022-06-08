module Rubato
  class InvalidNoteNameError < StandardError; end

  class Note
    attr_reader :name

    def initialize(name)
      raise InvalidNoteNameError if !CHROMATIC_SCALE.include?(name)
      @name = name
    end
  end
end
