require('minitest/autorun')
require('minitest/rg')
require_relative('../testing_task_B.rb')
require('pry-byebug')

class CardGameTest < MiniTest::Test

@card1 = CardGame.new("spades", 1)
@card2 = CardGame.new("clubs", 5)
@card3 = CardGame.new("hearts", 8)

# binding.pry()

  def test_suit
    card = CardGame.new("clubs", 5)
    assert_equal("clubs", card.suit)
  end

  def test_value
    card = CardGame.new("hearts", 8)
    assert_equal(8, card.value)
  end

  def test_ace_check_true
    card = CardGame.new("spades", 1)
    assert(card.checkforace)
  end

  def test_ace_check_false
    card = CardGame.new("clubs", 5)
    assert_equal(false, card.checkforace)
  end

  def test_highest_card
    @card1 = CardGame.new("spades", 1)
    @card2 = CardGame.new("clubs", 5)
    @card3 = CardGame.new("hearts", 8)
    assert_equal(@card3, CardGame.highest_card(@card2, @card3))
  end

  def test_card_total
    card1 = CardGame.new("spades", 1)
    card2 = CardGame.new("clubs", 5)
    card3 = CardGame.new("hearts", 8)

    cards = [card1, card2, card3]
    assert_equal("You have a total of 14", CardGame.cards_total(cards))
  end

end
