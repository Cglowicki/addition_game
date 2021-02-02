class Player

  attr_accessor :lives, :name
  
  def initialize(name)
    @name = name
    @lives = 3
    puts "you have #{@lives}/3 lives"
  end

  def lose_life
    @lives = @lives - 1
    puts "You have #{@lives}/3 lives"
  end

  def dead?
    @lives <= 0
  end
end
