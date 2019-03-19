require './questions'
$questions = @questions
class Player 
	attr_accessor :wins, :name
	def initialize  (name)  
	@name = name
	@wins = 0
	
 
 end 

end

class Game
 # constructor  
 def initialize  (p1, p2)  
	 @player1 = p1
	 @player2 = p2
	 
end 

	def turn 
		counter = 0
		while @player1.wins != 3 || @player2.wins != 3
		
			player = ''
		if counter % 2 == 0
			player = @player1
		else 
			player = @player2
		end
	#	p player.wins
		random = rand(5)
		# the issue player will not accpet the name method
		# even tho its defined in the same way as wins
		p "It is  #{player.name}'s turn!"
		puts $questions[random][:question]
		input = gets.chomp
	
		if input != $questions[random][:answer].to_s
			puts 'Your an idiot!'
			counter += 1
		else 
		 player.wins += 1
			puts 'Thats right! cash money g'
			counter += 1
		#	p counter
			#p @player1.wins
			
		end
		if @player1.wins == 3 || @player2.wins == 3 
			puts " #{player.name} Wins!"
			break
		else
			puts " score: "
			puts "player1: #{@player1.wins} /3 ||| player2: #{@player2.wins} /3 "

			
		end
			
		end
  end
end

player1 = Player.new 'player 1'
player2 = Player.new 'player 2'
 game = Game.new player1, player2
#p player1.wins
game.turn
#p player1.wins
