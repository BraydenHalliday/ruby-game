require './questions'
$questions = @questions
class Player 
	def initialize  ()  
	@wins = 3
 
 end 
    attr_accessor :wins
end

class Game
 # constructor  
 def initialize  (p1, p2)  
	 @player1 = p1
	 @player2 = p2
	 
end 

  def turn 
    random = rand(5)
		puts $questions[random][:question]
		input = gets.chomp
	
		if input != $questions[random][:answer].to_s
			puts 'idiot'
		else 
		 @player1.wins += 1
			puts 'cash money g'
		end
  end
end
player1 = Player.new
player2 = Player.new
 game = Game.new player1, player2
p player1.wins
game.turn
p player1.wins
