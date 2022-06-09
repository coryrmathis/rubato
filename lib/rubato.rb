# frozen_string_literal: true

require_relative "rubato/version"
require "dry-configurable"
require "rubato/note"
require "rubato/tuning"
require "rubato/instrument"
module Rubato
  extend Dry::Configurable

  setting :reference_note, default: Note.new(name: "A4", frequency: 440.0)

  setting :tuning, default: Tuning.new(name: :equal_temperament, increment_ratio: 2 ** (1.0/12)) 
end
