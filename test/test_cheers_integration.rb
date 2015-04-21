require 'minitest/autorun'
require 'bundler/setup'

class TestCheersIntegration < Minitest::Test

  def test_that_the_test_runs
    output = `./cheers`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
EOS
   assert_equal expected, output
  end
end
