require('minitest/autorun')
require('minitest/rg')
require_relative('../testing_task_B.rb')

class CardGameTest < MiniTest::Test

@card1 = CardGame.new("spades", 1)
@card2 = CardGame.new("clubs", 5)
@card3 = CardGame.new("hearts", 8)

  def test_suit
    assert_equal("clubs", @card2.suit)
  end

  def test_value
    assert_equal(8, @card3.value)
  end

  def test_ace_check_true
    assert(checkforAce(@card1))
  end

  def test_ace_check_false
    assert_equal(false, checkforAce(@card2))
  end

  def test_highest_card
    assert_equal(@card3, highest_card(@card2, @card3))
  end

  def test_card_total
    cards = [@card1, @card2, @card3]
    assert_equal(14, cards_total(cards))
  end

end
