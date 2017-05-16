require "./lib/file_io"
require "./lib/alphabet_hash"
require "./lib/night_read"

class NightWrite

  attr_reader :output, :alphabet, :reader

  def initialize
    @output = FileOutput.new
    @alphabet = AlphabetHash.new
    @reader = NightRead.new
  end
end
