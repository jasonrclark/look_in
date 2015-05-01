require 'minitest_helper'

class TestLookIn < Minitest::Test
  module Outer
    module Inner
      module Innermost
      end
    end
  end

  module Home
    module Room
      look_in Outer::Inner

      def self.door
        Innermost
      end
    end

    module Shed
      look_in Outer

      def self.floor
        Inner::Innermost
      end
    end
  end

  def test_that_it_has_a_version_number
    refute_nil ::LookIn::VERSION
  end

  def test_look_in
    assert_equal Outer::Inner::Innermost, Home::Room.door
  end

  def test_finds_nested_consts
    assert_equal Outer::Inner::Innermost, Home::Shed.floor
  end

end
