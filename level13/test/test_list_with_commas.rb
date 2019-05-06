require 'minitest/autorun'
require 'list_with_commas'

class TestWhithCommans < Minitest::Test
  def setup
    @list = ListWithCommas.new
  end

  def test_it_joins_two_wors_whith_and
    @list.items = ['apple', 'orange']
    assert('apple and orange' == @list.join)
  end

  def test_it_joins_three_words_with_commas
    @list.items = ['apple', 'orange', 'pear']
    assert('apple, orange, and pear' == @list.join)
  end

  def test_it_joins_one_word_alone
    @list.items = ['apple']
    assert_equal('apple', @list.join)
    # assert('apple' == list.join,"return value did not equal 'apple'")
  end
end
