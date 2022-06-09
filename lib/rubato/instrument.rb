module Rubato 
  class Instrument
    attr_reader :tuning, :reference_note, :low_limit, :high_limit

    def initialize(options={})
      @tuning = options.fetch(:tuning, Rubato.config.tuning)
      @reference_note = options.fetch(:reference_note, Rubato.config.reference_note)
      @low_limit = 27.0
      @high_limit = 4200.0
    end

    def note_collection 
      collection = [reference_note]
      pitch = reference_note.frequency
      while pitch < high_limit
        pitch = pitch * tuning.increment_ratio
        collection << Note.new(name: "n/a", frequency: pitch)
      end
      return collection
    end
  end  
end
