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

  def test_does_it_have_access_to_info_from_file_io_file
    a = NightWrite.new
    expected = FileOutput
    actual = a.output.class

    assert_equal expected, actual
  end

  def test_does_it_have_access_to_info_from_alphabet_hash_file
    a = NightWrite.new
    expected = AlphabetHash
    actual = a.alphabet.class

    assert_equal expected, actual
  end

  def test_does_it_have_access_to_info_from_night_reader_file
    a = NightWrite.new
    expected = NightRead
    actual = a.reader.class

    assert_equal expected, actual
  end
end
