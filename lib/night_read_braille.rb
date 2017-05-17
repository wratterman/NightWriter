require './lib/file_io'
require './lib/alphabet_hash'

class NightReadBraille
  attr_reader :input, :info, :to_translate

  def initialize
    @input = FileInput.new
    @info = input.read.chomp.strip
    @to_translate = AlphabetHash.new
  end

  def reversed(key)
    new_hash = to_translate.alphabet.invert
    new_hash[key]
  end

  def split_by_line
    info.split("\n")
  end

end
