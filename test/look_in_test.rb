require 'minitest_helper'

class TestLookIn < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::LookIn::VERSION
  end
end
