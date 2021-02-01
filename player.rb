class Player
  @@lives = 3
    puts "you have #{@@lives}/3 lives"

  def incorrect_answer
    @@lives = @@lives - 1
    puts "you have #{@@lives}/3 lives"
    @@lives
  end
end

p1 = Player.new
p1.incorrect_answer
p1.incorrect_answer
p1.incorrect_answer
