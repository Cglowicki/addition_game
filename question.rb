class Question
  # player1 = Player.new
  # player2 = Player.new

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