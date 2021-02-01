#--NOUNS
#player 1 & 2 => two players per round
#numbers => num1 and num2 (1..20)
#questions => num1 and num2 injected into string
#lives => if correct, move on. if incorrect -1 life
#turns => if not loser, next turn

#--INFO
#---take in num1 and num2 from (1..20), inject to string
#---player lives == 3 **out of static "x/3" where x #{lives}
#---text and prompts for questions, incorrect, correct, new turn,
    #winner, game over
#---SPECIAL NOTE: hint from compass current_player class?

#--CLASSES
#--players => lives
#--questions => num1 & num2, ask method, 
  #constructor - num1 + num2 == true (question.result)
#--game => logic, prompts, UI - input from .chomps

puts "--- Here's the question ---"

class Player
  lives = 3
  puts "you have #{lives}/3 lives"

  def incorrect_answer
    lives = lives - 1
    puts "you have #{lives}/3 lives"
    lives
  end
end

class Question
  player1 = Player.new
  player2 = Player.new

  num_1 = rand(1..20)
  num_2 = rand(1..20)
  puts "What is #{num_1} plus #{num_2} equals what?"
  answer = gets.chomp
  #creat method called correct
  if(num_1 + num_2 == answer.to_i)
    puts "You got it!"
  elsif
    #create a method called incorrect
    puts "Incorrect, take your time on the next one."
  end
end



# p1_lives = 3
# p2_lives = 3
#if (call incorrect method) then p1_lives - 1 !! decrement method



