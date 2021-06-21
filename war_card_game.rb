class Card
  attr_reader :value, :suit, :abs_value
  def initialize(value, suit)
    values = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
    @value = value
    @abs_value = values.index(@value) + 2
    @suit = suit
  end
end

class Deck
  attr_accessor :cards
  def initialize
    @cards = []
  end

  def shuffle_cards
    @cards.shuffle!
  end

  def play_card(deck)
    deck.add_card(@cards.pop)
  end

  def add_card(card)
    @cards << card
    card
  end
end

class Main_Deck < Deck
  def initialize
    suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
    values = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
    @cards = []
    suits.each do |suit|
      values.each do |value|
        @cards << Card.new(value, suit)
      end
    end
    @cards.shuffle!
  end
end

class Player
  attr_accessor :name, :hand
  def initialize(name)
    @name = name
    @hand = Deck.new
  end
end


def battle(p1_card, p2_card, player1, player2, deck)
  if p1_card.abs_value > p2_card.abs_value
    puts "#{player1.name} wins the round."
    deck.cards.length.times do
      deck.play_card(player1.hand)
    end
  elsif p2_card.abs_value > p1_card.abs_value
    puts "#{player2.name} wins the round."
    deck.cards.length.times do
      deck.play_card(player2.hand)
    end
  else
    war(player1, player2, deck)
  end
end

def war(player1, player2, deck)
  puts "THIS MEANS WAR!!!"
  p1_warcards = []
  p2_warcards = []
  4.times do
    p1_warcards << player1.hand.play_card(deck)
    p2_warcards << player2.hand.play_card(deck)
  end
  if p1_warcards[3] && p2_warcards[3]
    puts "#{player1.name} puts face down: #{p1_warcards[0].value} of #{p1_warcards[0].suit}, #{p1_warcards[1].value} of #{p1_warcards[1].suit}, #{p1_warcards[2].value} of #{p1_warcards[2].suit}. And the face up card is: #{p1_warcards[3].value} of #{p1_warcards[3].suit}"
    puts "#{player2.name} puts face down: #{p2_warcards[0].value} of #{p2_warcards[0].suit}, #{p2_warcards[1].value} of #{p2_warcards[1].suit}, #{p2_warcards[2].value} of #{p2_warcards[2].suit}. And the face up card is: #{p2_warcards[3].value} of #{p2_warcards[3].suit}"
    battle(p1_warcards[3], p2_warcards[3], player1, player2, deck)
  else
    return
  end
end



# Create main deck and players
deck1 = Main_Deck.new
puts "Enter Player 1's name:"
name = gets.chomp
player1 = Player.new(name)
puts "Enter Player 2's name:"
name = gets.chomp
player2 = Player.new(name)

# Deal cards in deck to each player
deal = player1
while deck1.cards.length > 0
  deck1.play_card(deal.hand)
  if deal == player1
    deal = player2
  else
    deal = player1
  end
end

# Play a game of War
round_number = 1
while player1.hand.cards.length > 0 && player2.hand.cards.length > 0
  puts "\n\nRound #{round_number}:"
  puts "#{player1.name}'s number of cards: #{player1.hand.cards.length}   |   #{player2.name}'s number of cards: #{player2.hand.cards.length}"
  p1_card = player1.hand.play_card(deck1)
  p2_card = player2.hand.play_card(deck1)
  puts "#{player1.name} played a #{p1_card.value} of #{p1_card.suit}."
  puts "#{player2.name} played a #{p2_card.value} of #{p2_card.suit}."
  battle(p1_card, p2_card, player1, player2, deck1)
  round_number += 1
  sleep(0.1)
end

if player1.hand.cards.length == 0
  puts "\n#{player1.name} ran out of cards, #{player2.name} wins the game!"
elsif player2.hand.cards.length == 0
  puts "\n#{player2.name} ran out of cards, #{player1.name} wins the game!"
end
