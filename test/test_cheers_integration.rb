require_relative 'test_helper'

#require 'bundler/setup'

class TestCheersIntegration < Minitest::Test

  def test_0a_that_the_test_runs
    output = `./cheers`
    expected = "I'd cheer for you, if only I knew who you were :("
   assert_equal expected, output
  end

  def test_0b_two_valid_arguments
    output = `./cheers Abby 08/27`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
ABBY's just GRAND!

Awesome! Your birthday is in 127 days! Happy Birthday in advance!
EOS
    assert_equal expected, output
  end


# 1 valid arg1 invalid arg:
  # regular name

  def test_1a_one_valid_argument
    output = `./cheers Abby`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
ABBY's just GRAND!
EOS
    assert_equal expected, output
  end

  # 1 valid arg1 invalid arg:
  # name with hyphens
  def test_1b_one_valid_argument
    output = `./cheers Abby-Zabby`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
Give me a... Z
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
ABBY-ZABBY's just GRAND!
EOS
    assert_equal expected, output
  end

# 1 invalid arg:
      # birthday instead of name
      # all non-word characters
      # "" (empty string)
      # " " (whitespace)

  def test_1c_one_invalid_argument
    output = `./cheers 08/27`
    expected = "I'd cheer for you, if only I knew who you were :("
    assert_equal expected, output
  end

  def test_1d_one_invalid_argument
    output = `./cheers &#(@(:::___++--`
    expected = "I'd cheer for you, if only I knew who you were :("
    assert_equal expected, output
  end

  def test_1e_one_invalid_argument
    output = `./cheers ""`
    expected = "I'd cheer for you, if only I knew who you were :("
    assert_equal expected, output
  end

  def test_1f_one_invalid_argument
    output = `./cheers " "`
    expected = "I'd cheer for you, if only I knew who you were :("
    assert_equal expected, output
  end

  def test_2a_two_valid_arguments_both_valid
    output = `./cheers Abby 08/27`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
ABBY's just GRAND!

Awesome! Your birthday is in 127 days! Happy Birthday in advance!
EOS
    assert_equal expected, output
  end

  def test_2b_two_arguments_second_invalid
    output = `./cheers Abby $%{}#@`
    expected = "I would wish you a Happy Birthday, if I knew when that was!"
    assert_equal expected, output
  end

  def test_2c_two_arguments_first_invalid
    output = `./cheers &#(@(:::++`
    expected = "I'd cheer for you, if only I knew who you were :("
    assert_equal expected, output
  end

  def test_2d_two_arguments_none_valid
    output = `./cheers "&#(@(:::" "%$##%%"`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
I would wish you a Happy Birthday, if I knew when that was!
EOS
    assert_equal expected, output
  end

# def test_3a_is_valid_name?
#   cheers = Cheers.new
#   payload = "Abby"
#   cheers.push(payload)
#   assert_equal true, cheers.is_valid_name?
# end
#
# def test_3b_is_valid_name_with_hyphens?
#   cheers = Cheers.new
#   payload = "Abby-Zabby"
#   cheers.push(payload)
#   assert_equal true, cheers.is_valid_name?
# end
#
# def test_4a_is_invalid_name?
#   cheers = Cheers.new
#   payload = "08/25"
#   cheers.push(payload)
#   assert_equal false, cheers.is_valid_name?
# end
#
# def test_4b_is_invalid_name?
#   cheers = Cheers.new
#   payload = "%%(#()#*@(:::"
#   cheers.push(payload)
#   assert_equal false, cheers.is_valid_name?
# end
#
#
# def test_4c_is_invalid_name?
#   cheers = Cheers.new
#   payload = ""
#   cheers.push(payload)
#   assert_equal false, cheers.is_valid_name?
# end
#
#
# def test_4d_is_invalid_name?
#   cheers = Cheers.new
#   payload = " "
#   cheers.push(payload)
#   assert_equal false, cheers.is_valid_name?
# end
#
#
# def test_5a_is_valid_birthday?
#   cheers = Cheers.new
#   payload = "8/25"
#   cheers.push(payload)
#   assert_equal true, cheers.is_valid_birthday?
# end
#
#
# def test_5b_is_valid_birthday?
#   cheers = Cheers.new
#   payload = "08/25"
#   cheers.push(payload)
#   assert_equal true, cheers.is_valid_birthday?
# end
#
#
# def test_5c_is_valid_birthday?
#   cheers = Cheers.new
#   payload = "02/25"
#   cheers.push(payload)
#   assert_equal true, cheers.is_valid_birthday?
# end
#
# def test_5d_is_valid_birthday?
#   cheers = Cheers.new
#   payload = "08/25"
#   cheers.push(payload)
#   assert_equal true, cheers.is_valid_birthday?
# end
#
#
# def test_6a_is_invalid_birthday?
#   cheers = Cheers.new
#   payload = "25/08"
#   cheers.push(payload)
#   assert_equal false, cheers.is_valid_birthday?
# end
#
#
# def test_6b_is_invalid_birthday?
#   cheers = Cheers.new
#   payload = "08/25/1985"
#   cheers.push(payload)
#   assert_equal false, cheers.is_valid_birthday?
#  end

# Scenarios discussed in class:
  # 0 args -> help message DONE
  # 1 valid arg1 invalid arg:
      # regular name DONE
      # name with hyphens DONE
  # 1 invalid arg:
      # birthday instead of nameall non-word characters DONE
      # "" (empty string) DONE
      # " " (whitespace) DONE
  # 2 args:
      # valid + valid DONE
      # valid + invalid DONE
      # invalid + valid DONE
      # invalid + invalid DONE
  # Valid Names:
      # regular name DONE
      # name with hyphens DONE
  # Invalid names:
      # birthday instead of name DONE
      # all non-word characters DONE
      # "" (empty string) DONE
      # " " (white space) DONE
  # Valid months:
      # m/dd (8/25) DONE
      # mm/dd (08/25) DONE
      # birthdays that already happened this year DONE
      # birthdays that haven't happened yet this year DONE
  # Invalid months:
      # dd/mm (25/08) DONE
      # dd/mm/yy (08/25/08) DONE
end
