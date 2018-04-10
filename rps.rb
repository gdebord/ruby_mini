# Rock / Paper / Scissors game

Kernel#srand

game_status = true

def roll
	computer_hand = ["rock", "paper", "scissors"][rand(3)]

	puts "Rock, paper, or scissors?"
	user_hand = gets.chomp

	return [computer_hand , user_hand]
end


while (game_status)
	play = roll

	# user played rock
	if play[1].downcase == "rock"
		puts "user played rock\n"
		if play[0].downcase == "rock" #play again
			puts "computer played rock; play again\n"
			game_status = true
		elsif play[0].downcase == "paper"
			puts "computer played paper; computer wins\n"
			game_status = false
		elsif play[0].downcase == "scissors"
			puts "computer played scissors; user wins\n"
			game_status = false
		else
			puts "error -- should not arrive here\n"
		end
	# user played paper
	elsif play[1].downcase == "paper"
		puts "user played paper\n"
		if play[0].downcase == "paper" #play again
			puts "computer played paper; play again\n"
			game_status = true
		elsif play[0].downcase == "rock"
			puts "computer played rock; user wins\n"
			game_status = false
		elsif play[0].downcase == "scissors"
			puts "computer played scissors; computer wins\n"
			game_status = false
		else
			puts "error -- should not arrive here\n"
		end
	# user played scissors
	elsif play[1].downcase == "scissors"
		puts "user played scissors\n"
		if play[0].downcase == "scissors" #play again
			puts "computer played scissors; play again\n"
			game_status = true
		elsif play[0].downcase == "paper"
			puts "computer played paper; user wins\n"
			game_status = false
		elsif play[0].downcase == "rock"
			puts "computer played rock; computer wins\n"
			game_status = false
		else
			puts "error -- should not arrive here\n"
		end
	else
		puts "user input error"
		game_status = true
	end
end



