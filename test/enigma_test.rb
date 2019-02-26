require_relative 'test_helper'

class EnigmaTest <MiniTest::Test
  def test_it_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_automatic_arguments
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_current_date_can_be_found_as_default
    enigma = Enigma.new
    time = Time.new
    expected = time.strftime("%d%m%y")
    assert_equal expected, enigma.date
  end

  def test_it_can_encrypt_according_to_algorithm
    enigma = Enigma.new
    actual = enigma.encrypt("hello world", "02715", "040895")
    expected = {encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, actual
  end

  def test_decryption
    enigma = Enigma.new
    actual = enigma.decrypt("keder ohulw", "02715", "040895")
    expected = {decryption: "hello world",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, actual
  end
end
