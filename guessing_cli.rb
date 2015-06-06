# Code your solution here!

def prompt_user
  puts "Guess a number between 1 and 6."
end

def get_input
  gets.strip
end

def play_round
  prompt_user
  player_input = get_input
end

def is_correct_guess(player_num, computer_num)
  player_num.to_i == computer_num
end

def correct_guess
  puts "/You guessed the correct number!/"
end

def incorrect_guess(computer_num)
  puts "/The computer guessed #{computer_num}./"
end

def end_game
  puts "/Goodbye!/"
end

def run_guessing_game
  computer_num = rand(6)
  player_input = play_round

  until (player_input == "exit")
    if (is_correct_guess(player_input, computer_num))
      correct_guess
    else
      incorrect_guess(computer_num)
    end
    player_input = play_round
  end
  end_game
end
