class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask
    puts "What does #{@num1} plus #{@num2} equal to?"
    answer = gets.chomp

    if(@num1 + @num2 == answer.to_i)
      puts "You got it!"
      return true
    elsif
      puts "Incorrect, take your time on the next one."
      return false
    end
  end

end