require './player.rb'
require './questions.rb'


class Game

  def initialize
    @current_player = 'Amy'

    @player1 = Player.new('Amy')
    @player2 = Player.new('Manuel')

    @player1_lives = "#{@player1.lives}/3"
    @player2_lives = "#{@player2.lives}/3"

    @end = false

    until @end
      question_loop
    end

  end

  def question_loop

    puts '--- NEW TURN ---'
    ask_question = Questions.new(@current_player)

   #If incorrect, 1 life less
    if !ask_question.correct
    incorrect
    end


   #Change player
    if @current_player == 'Amy'
      @current_player = 'Manuel'

    else @current_player == 'Manuel'
     @current_player = 'Amy'

    end

    puts "P1: #{@player1.name} #{@player1_lives} vs P2: #{@player2.name} #{@player2_lives}"



  end

  def incorrect

    #Check it the player still has lifes
    if @current_player == 'Amy'
      @player1.incorrect
      @player1_lives = "#{@player1.lives}/3"

      if @player1.lives === 0
        @end = true
        puts '--- GAME OVER, PAL ---'

      end

    else
      @player2.incorrect
      @player2_lives = "#{@player2.lives}/3"

      if @player2.lives === 0
        @end = true
        puts '--- GAME OVER, PAL ---'

      end
    end
  end
end

start = Game.new


