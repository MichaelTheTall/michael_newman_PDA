require('minitest/autorun')
require('minitest/rg')
require('../testing_task_B.rb')

class CardGameTest < MiniTest::Test

@card1 = CardGame.new("spades", 1)
@card2 = CardGame.new("clubs", 5)
@card3 = CardGame.new("hearts", 8)

  def test_suit

  end

end
