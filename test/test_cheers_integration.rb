require 'minitest/autorun'
require 'bundler/setup'

class TestCheersIntegration < Minitest::Test

  def test_that_the_test_runs
    output = `./cheers`
    expected = "I'd cheer for you, if only I knew who you were :("
   assert_equal output, expected
  end
end
