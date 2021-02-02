class Player

  attr_accessor :lives
  
  def initialize(lives)
  @lives = 3
    puts "you have #{@lives}/3 lives"
  end
  
end
