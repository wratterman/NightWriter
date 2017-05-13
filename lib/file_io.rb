class FileIO

  def input_file_reader
    message = File.open(ARGV[0], 'r')
    message_array = []
    message.each_line do |character|
      message_array << character
    end
    message.close
    to_convert = message_array.join(" ")
  end

  def output_file_writer(translation)
    output = File.open(ARGV[1], 'w')
    output.write(translation)
    output.close
  end
end
