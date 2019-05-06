require 'minitest/autorun'

class TestSomehing < Minitest::Test
  def test_true_assertion
    assert(true)
  end

  def test_false_assertion
    assert(false )
  end
end