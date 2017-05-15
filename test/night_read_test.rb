require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/night_read"

class NightReadTest < Minitest::Test

  def test_can_it_run_a_state_of_class_NightRead
    a = NightRead.new
    expected = NightRead
    actual = a.class

    assert_equal expected, actual
  end

  def test_does_it_print_the_correct_message_to_terminal
    a = NightRead.new
    expected = "You created 'braille.txt' that has 256 characters!"
    actual = a.print_message

    assert_equal expected, actual
  end

  def test_is_input_a_state_of_FileInput_class_from_file_io
    a = NightRead.new
    expected = FileInput
    actual = a.input.class

    assert_equal expected, actual
  end

  def test_is_input_pulling_the_length_of_the_internal_text_information
    a = NightRead.new
    expected = 24
    actual = a.file_length

    assert_equal expected, actual
  end

end
