module Rubato
  class Tuning 
    attr_reader :name, :increment_ratio

    def initialize(name:, increment_ratio:)
      @name = name 
      @increment_ratio = increment_ratio
    end  
  end
end