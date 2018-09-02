### Testing task A code:

# Carry out Static testing on the code below.
# Correct the errors below that you spotted in task 1.

class CardGame

# attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value;
    # @value = value
  end

  def checkforAce(card)
    if card.value = 1
      # if card.value ==1
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2)
  # def highest_card(card1, card2)
  if card1.value > card2.value
    return card.name
    # return card1
  else
    card2
    # return card2
  end
end
end
# Unnecessary end
def self.cards_total(cards)
  total
  # total = 0
  for card in cards
    total += card.value
    return "You have a total of" + total
    # Line 41 should come after 'end'
  end
end
# end missing
