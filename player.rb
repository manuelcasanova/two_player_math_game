class Player

  attr_accessor :lives, :name

  def initialize(name)
    @lives = 3
    @name = name
  end

  def incorrect
    @lives -= 1
  end

end