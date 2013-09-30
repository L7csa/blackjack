# basic methods and defs
  # say
  # bust
  # basic deck

# get name

# init deck (with numbers)

# shuffle

# deal

# display player value

# ask for player action
  # hit
  # bust
  # stand

# dealer action

# Play again

def replay()
  puts "Would you like to play again? Enter 'y' or 'n'."
  replay = gets.chomp
  if replay.to_s == 'y'
  	exec("ruby blackjack.rb")
  elsif replay.to_s == 'n'
    puts "Thank you for playing!"
  else
    replay()
  end
end

replay