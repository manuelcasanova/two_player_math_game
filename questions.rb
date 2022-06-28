class Questions

  attr_accessor :correct_answer

    def initialize(current_player)
      @num1 = rand(20)
      @num2 = rand(20)
      @result = @num1 + @num2
      puts "What is #{@num1} plus #{@num2}?"
      answer
    end

  def answer
    @player_input = $stdin.gets.chomp.to_i

    if @player_input == @result
      puts "Correct answer"
      @correct_answer = true
    end
    
    if @player_input != @result
      puts "Wrong answer"
      @correct_answer = false
    end

  end
end