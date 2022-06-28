require "./player"
require "./questions"


class Game

  attr_accessor :question_loop

  def initialize

  @player1 = Player.new
  @player2 = Player.new

  @current_player = "Player1"


  @player1lives = "#{@player1.lives} lives out of 3"
  @player2lives = "#{@player2.lives} lives out of 3"

  @end = false

  until @end
    question_loop
  end

end

def question_loop 
puts "------ NEW TURN ------"

question = Questions.new(@current_player)

#if !question correct
if !question.correct_answer
  incorrect
end 

def incorrect

  if @current_player == 'Player 1'
    @player1.incorrect
    @player1lives = "#{@player1.lives}/3"

    if @player1.lives === 0
      @end = true
      puts '----- GAME OVER -----'

    end

  else
    @player2.incorrect
    @player_2_lives = "#{@player2.lives}/3"

    if @player2.lives === 0
      @end = true
      puts '----- GAME OVER -----'

    end

  end

end




#Change the player

  if @current_player == "Player1"
    @current_player = "Player2"
  
  else @current_player == "Player2"
    @current_player = "Player1"

  end

 puts  "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"



  end



end


start_game = Game.new


