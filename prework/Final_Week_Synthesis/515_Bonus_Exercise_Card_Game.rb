class Card
  def initialize(value,suit)
    @value = value
    @suit = suit
  end

  def value
    @value
  end

  def suit
    @suit
  end

  def absvalue
    order = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
    return order.index(@value)
  end

  def name
    return "#{@value} of #{@suit}"
  end

end

class Player
  def initialize(id, hand)
    @player_id = id
    @hand = hand
    @score = 0
  end

  def player_id
    return @player_id
  end
  
  def hand
    @hand
  end

  def score
    @score
  end

  def add_point
    @score += 1
  end

  def play_card
    return @hand.pop
  end
end

def make_cards()
  values = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
  deck = []
  for value in values
    for suit in suits
      deck << Card.new(value,suit)
    end 
  end
  deck.shuffle!
  player1_cards = deck[0, 26]
  player2_cards = deck [26, 53]
  return player1_cards, player2_cards
end

def battle(player_a, player_b)
  card_a = player_a.play_card
  card_b = player_b.play_card
  puts "Player A: #{card_a.name}"
  puts "Player B: #{card_b.name}"
  if card_a.absvalue > card_b.absvalue
    puts "Player A wins that round!\n"
    player_a.add_point
  elsif card_b.absvalue > card_a.absvalue
    puts "Player B wins that round!\n"
    player_b.add_point
  elsif card_a.absvalue == card_b.absvalue
    puts "THIS MEANS WAR!!!"
    war(player_a,player_b)
  end
end

def war(player_a, player_b)
  war_hand_a, war_hand_b = [], []
  4.times do
    war_hand_a << player_a.play_card
    war_hand_b << player_b.play_card

  end
  puts "Player A puts face down: #{war_hand_a[0].name}, #{war_hand_a[1].name}, #{war_hand_a[2].name}. And the face up card is: #{war_hand_a[3].name}"
  
end

player_a, player_b = Player.new("A", make_cards[0]), Player.new("B", make_cards[1])
turn = 1
while player_a.hand[0] != nil
  puts "\nTurn: #{turn}"
  battle(player_a,player_b)
  turn += 1
end



