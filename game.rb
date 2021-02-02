#--game => logic, prompts, UI - input from .chomps
#---SPECIAL: loop through game so as not to declare it every turn
#--- set up turn logic

#--access to player and question classes
require './player.rb'
require './question.rb'

class Game

  #when initialized, set up p1 & p2
  def initialize
    @p1 = Player.new("Player1")
    @p2 = Player.new("Player2")
  end
  
  def start
    puts "- Let the game begin -"
    new_turn
  end
  
  #get_question
  def new_turn
    puts "- Here's the question -"
    question = Question.new
    result = question.ask
  end

  #--method for incorrect answer
  def incorrect_answer
    @lives = @lives - 1
    puts "you have #{@lives}/3 lives"
  end

  #@incorrect || correct, switch players, get_question, self!!!
  def switch_turn
    @p2.new_turn
    @p1.new_turn
  end
end





  #-----REF

  # class Question
  #   # player1 = Player.new
  #   # player2 = Player.new
  
  #   num_1 = rand(1..20)
  #   num_2 = rand(1..20)
  #   puts "What is #{num_1} plus #{num_2} equals what?"
  #   answer = gets.chomp
  #   #creat method called correct
  #   if(num_1 + num_2 == answer.to_i)
  #     puts "You got it!"
  #   elsif
  #     #create a method called incorrect
  #     puts "Incorrect, take your time on the next one."
  #   end
  # end

  #---------

  # class Player
  #   @@lives = 3
  #     puts "you have #{@@lives}/3 lives"
  
  #   def incorrect_answer
  #     @@lives = @@lives - 1
  #     puts "you have #{@@lives}/3 lives"
  #     @@lives
  #   end
  # end
  
  # p1 = Player.new
  # p1.incorrect_answer
  # p1.incorrect_answer
  # p1.incorrect_answer
