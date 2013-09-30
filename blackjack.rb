# NOTES
# This is a functioning but incomplete game. Still to do:
#   - Shift value of 11 to 1 when appropriate.
#   - (bonus) Integrate name.
#   - (bonus) Save suits.
#   - (bonus) Allow for multiple decks.

# basic methods and defs
def say(s)
  puts "==>   " + s.to_s
end

def val(hand)
  total = 0
  hand.each { |x| total += x }
  total
end

p_hand = []
d_hand = []

p_val = val(p_hand)
d_val = val(d_hand)

# basic deck
deck52 = [ 2, 3, 4, 5, 6, 7, 8 ,9, 10, 10, 10, 10, 11,
           2, 3, 4, 5, 6, 7, 8 ,9, 10, 10, 10, 10, 11,
           2, 3, 4, 5, 6, 7, 8 ,9, 10, 10, 10, 10, 11,
           2, 3, 4, 5, 6, 7, 8 ,9, 10, 10, 10, 10, 11 ]

# # get name
# say "Welcome to TeaLeaf Blackjack. My name is Scott, and I will be your "
# say "dealer today. What is your name?"
# puts
# name = gets.chomp
# puts
# say "Welcome, #{name}. Let's play some cards."

# shuffle
deck52.shuffle!

# deal
2.times { p_hand << deck52.pop }
say p_hand # Used to evaluate hand. Remove later.
2.times { d_hand << deck52.pop }
say d_hand # Used to evaluate hand. Remove later.

# player hand
p_val = val(p_hand)
say "Your hand is #{p_hand}. Your hand value is #{p_val}."


while p_val <= 21
  say "Would you like to stand (s) or hit (h)?"
  sh = gets.chomp

  if sh == "s"
    say "Your final hand value is #{p_val}."
    p_val
    break
  else
    p_hand << deck52.pop
    p_val = val(p_hand)
    say "Your hand is now #{p_hand}. Your hand value is now #{p_val}."
    p_val
  end
end

# dealer hand
d_val = val(d_hand)
say "The dealer shows #{d_hand}. The dealer's hand value is #{d_val}."

while d_val < 17
  d_hand << deck52.pop
  d_val = val(d_hand)
  say "The dealer takes a card and now shows #{d_hand}. The dealer's hand 
      value is now #{d_val}."
  d_val
end

# evaluation
if p_val > 21
  say "You've busted."
elsif d_val > 21
  say "The dealer busted. You won!"
else
  if d_val == p_val
    say "It's a push."
  elsif d_val > p_val
    say "The dealer won."
  else
    say "You won!"
  end
end

# Replay
puts "Would you like to play again? Enter 'y' or 'n'."
replay = gets.chomp
if replay.to_s == 'y'
  exec("ruby blackjack.rb")
else replay.to_s == 'n'
  puts "Thank you for playing!"
end