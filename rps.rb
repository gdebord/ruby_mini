# Rock / Paper / Scissors game

game_status = true

def roll
	computer_hand = "rock"

	puts "Rock, paper, or scissors?"
	user_hand = gets.chomp

	return [computer_hand , user_hand]
end


while (game_status)
	play = roll

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
			puts "user input error"
			game_status = true
		end
	elsif play[1].downcase == "paper"
		puts "user played paper\n"
	elsif play[1].downcase == "scissors"
		puts "user played scissors\n"
	end
end



