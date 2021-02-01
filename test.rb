# puts "---- WELCOME ----"

 #num1 = (1..20)


#  num1 = rand(1..20)
#  puts num1

#  num2 = rand(1..20)
#  puts num2

# num1.each do |num|
#   puts num
# end

# num2 = (1..20)

# num2.each do |num|
#   puts num
# end

# puts "---- GAME OVER ----"

# puts num1.methods


class Player
  lives = 3
  puts "you have #{lives}/3 lives"

  def incorrect_answer
    lives = lives - 1
    puts "you have #{lives}/3 lives"
    lives
  end
  puts player1.lives
end

class Question
  player1 = Player.new
  player2 = Player.new

  num1 = rand(1..20)
  num2 = rand(1..20)
  puts "What is #{num1} plus #{num2} equals what?"
  answer = gets.chomp
  #create method called correct
  if(num1 + num2 == answer.to_i)
    puts "You got it!"
  elsif
    #create a method called incorrect
    puts "Incorrect, take your time on the next one."
    player1.incorrect_answer
  end

end
