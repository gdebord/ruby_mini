# Rock / Paper / Scissors game

def roll

	computer_hand = "rock"

	puts "Rock, paper, or scissors?"
	user_hand = gets.chomp()

	return [computer_hand , user_hand]
end

play = roll

if play[0] == play[1]
	print("same\n")
else
	print("different\n")
end