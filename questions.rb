class Questions

  attr_accessor :correct

  def initialize(current_player)
    @num1 = rand(1..20)
    @nume2 = rand(1..20)
    @answer = @num1 + @nume2

    @current_player = current_player

    puts "#{current_player}: What's #{@num1} plus #{@nume2} ?"
    ask


  end

  def ask

    @player_answer = gets.chomp
   


    if @player_answer == @answer.to_s
      puts "#{@current_player}, well done, that's the correct answer"
      @correct = true
    

    else
      puts "#{@current_player}, Incorrect answer"
      @correct = false

    end

  end

end