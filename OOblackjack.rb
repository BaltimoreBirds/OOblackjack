class Deck

  def initialize
  @deck = []
  SUITS.each do |suit|
    VALUES.each do |value|
      @deck.push(value + suit)
    end
  end
  @deck.shuffle!

  end

  def pop
    next_card=@deck.pop
    puts @deck
  end

end


class Card

  def initialize
    SUITS = ['♠', '♣', '♥', '♦']
    VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
  end
end

class Hand

  def hit(card)

  end

  def stay

  end

  def score(owner)

  @owner_score =0
  @ace_score = 0

  owner.each do |card|
    value = card.chop
    card=card.chomp
    low_value=card
    if value == 'J'|| value =='K'|| value =='Q'
      card = 10
      low_value = 10
    elsif value == 'A'
      card=11
      low_value=1

    end
    @ace_score += low_value.to_i
    @owner_score += card.to_i

    end
    if @owner_score >21
      return @ace_score
    else
      return @owner_score
    end
  end

  def has_ace?(owner)
    owner.include?('A♠')==true || owner.include?('A♣')==true || owner.include?('A♥') == true || owner.include?('A♦') == true
  end

  def busted?

  end

end

class Game

end

card =Card.new
deck =Deck.new
puts @deck

