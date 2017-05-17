require "./lib/night_read"

class FileInput

  def read
    message = ARGV[0]
    File.read(message)
  end

  def length
    message = ARGV[0]
    string = File.read(message)
    string.length
  end
end

class FileOutput
  attr_reader :reader

  def initialize
    @reader = NightRead.new
  end

  def write(text)
    new_message = File.open(braille.txt, "w")
    new_message.write(text)
    new_message.close
    print_message
  end
end
