require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/night_read_braille'

class NightReadBrailleTest < Minitest::Test

  def test_it_exists
    a = NightReadBraille.new
    expected = NightReadBraille
    actual = a.class

    assert_equal(expected, actual)
  end

  def test_it_has_access_to_file_io
    a = NightReadBraille.new
    expected = FileInput
    actual = a.input.class

    assert_equal(expected, actual)
  end

  def test_input_is_instance_of_file_io
    a = NightReadBraille.new
    actual = a.input

    assert_instance_of FileInput, actual
  end

  def test_it_reads_files
    a = NightReadBraille.new
    expected = ".00.000..0\n00.....00.\n0.....0.0."
    actual = a.info

    assert_equal(expected, actual)
  end

  def test_it_has_access_to_alphabet_hash
    a = NightReadBraille.new
    actual = a.to_translate

    assert_instance_of AlphabetHash, actual
  end

  def test_it_returns_correct_values_when_correct_translator_is_called
    a = NightReadBraille.new
    expected = ["0.", "..", ".."]
    actual = a.to_translate.alphabet["a"]

    assert_equal(expected, actual)
  end

  def test_it_returns_correct_values_when_different_key_is_called
    a = NightReadBraille.new
    expected = ["0.", "0.", ".."]
    actual = a.to_translate.alphabet["b"]

    assert_equal(expected, actual)
  end

  def test_it_returns_correct_values_when_another_different_key_is_called
    a = NightReadBraille.new
    expected = ["00", "..", ".."]
    actual = a.to_translate.alphabet["c"]

    assert_equal(expected, actual)
  end

  def test_alphabet_hash_can_be_reversed
    a = NightReadBraille.new
    expected = "a"
    actual = a.reversed(["0.", "..", ".."])

    assert_equal(expected, actual)
  end

  def test_alphabet_hash_can_be_reversed_again
    a = NightReadBraille.new
    expected = "b"
    actual = a.reversed(["0.", "0.", ".."])

    assert_equal(expected, actual)
  end

  def test_alphabet_hash_can_be_reversed_again_again
    a = NightReadBraille.new
    expected = "z"
    actual = a.reversed(["0.", ".0", "00"])

    assert_equal(expected, actual)
  end

  def test_can_input_be_separated_into_arrays
    a = NightReadBraille.new
    expected = [[".0", "0.", "00", "0.", ".0"], ["00", "..", "..", ".0", "0."], ["0.", "..", "..", "0.", "0."]]
    actual = a.split_by_line

    assert_equal(expected, actual)
  end
  #
  def test_it_stores_each_line_by_index
    a = NightReadBraille.new
    expected = [[".0", "00", "0."], ["0.", "..", ".."], ["00", "..", ".."], ["0.", ".0", "0."], [".0", "0.", "0."]]
    actual = a.group_letters

    assert_equal(expected, actual)
  end

  def test_it_translated_to_english
    a = NightReadBraille.new
    expected = "tacos"
    actual = a.translated

    assert_equal(expected, actual)
  end

  def test_it_translated_to_english_from_ready_to_write
    a = NightReadBraille.new
    expected = "tacos"
    actual = a.ready_to_write

    assert_equal(expected, actual)
  end
end
