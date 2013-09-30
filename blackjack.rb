# basic methods and defs
def say(s)
  puts "==>   " + s.to_s
end

# # bust value
# bust = 21

# basic deck
deck52 = [ 2, 3, 4, 5, 6, 7, 8 ,9, 10, 10, 10, 11 ]

# # get name
# say "Welcome to TeaLeaf Blackjack. My name is Scott, and I will be your "
# say "dealer today. What is your name?"
# puts
# name = gets.chomp
# puts
# say "Welcome, #{name}. Let's play some cards."

# shuffle

deck52.shuffle!
p_hand = []
d_hand = []
p_val = 0
d_val = 0

# deal

2.times { p_hand << deck52.pop }
say p_hand
2.times { d_hand << deck52.pop }
say d_hand

# # init deck (with numbers)

# def hand()
#   deck52 = [ 2, 3, 4, 5, 6, 7, 8 ,9, 10, 10, 10, 11 ]
# # shuffle
#   deck52.shuffle!
#   d_hand = []
#   p_hand = []
#   p_val = 0
#   d_val = 0

# # deal
#   def deal()
#     d_hand = deck52.pop(2)
#     p_hand = deck52.pop(2)
#   end

# # display player value
#   def disp_p_hand()
#     p_hand.each do |x|
#     p_val += x.to_i
#     say "You have #{p_hand.each { |y| puts y }}. Your total is #{p_val}."
#     end
#   end
 
#   disp_p_hand()

# # ask for player action
#   bust = false
#   def action()
#     while bust == false
#     say "What would you like to do -- hit (h) or stand (s)?"
#     hs = gets.chomp

#       if hs == "s"
#         dealer()
#       elsif hs == "h"
#         p_hand += deck52.pop
#         disp_p_hand
#       else
#         say "That is not a valid action."
#         action()
#       end
#     end
#   end

#   action()

  


#   # hit
#   # stand

# # dealer action

# end

# hand()

# # Play again

# def replay()
#   puts "Would you like to play again? Enter 'y' or 'n'."
#   replay = gets.chomp
#   if replay.to_s == 'y'
#   	hand()
#   elsif replay.to_s == 'n'
#     puts "Thank you for playing!"
#   else
#     replay()
#   end
# end

# replay