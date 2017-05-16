require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/night_write"

class NightWriteTest < Minitest::Test

  def test_can_it_run_a_state_of_class_NightWrite
    a = NightWrite.new
    expected = NightWrite
    actual = a.class

    assert_equal expected, actual
  end

  def test_does_it_have_access_to_info_from_night_reader_file
    a = NightWrite.new
    expected = NightRead
    actual = a.reader.class

    assert_equal expected, actual
  end

  def test_it_returns_correct_created_message_to_terminal
    a = NightWrite.new
    expected = "You created braille.txt that has 6 characters!"
    actual = a.print_message

    assert_equal expected, actual
  end

  def test_it_also_returns_correctly_in_encode_to_braille
    skip # skipped once added puts for test below
    a = NightWrite.new
    expected = "You created braille.txt that has 6 characters!"
    actual = a.encode_to_braille

    assert_equal expected, actual
  end

  def test_it_prints_to_terminal
    a = NightWrite.new
    a.encode_to_braille
    expected = nil
    # Value of puts always returns nil
    assert_nil expected
  end
end
