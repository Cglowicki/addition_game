#--game => logic, prompts, UI - input from .chomps
#---SPECIAL: loop through game so as not to declare it every turn
#--- set up turn logic

#--access to player and question classes

require './question.rb'

class Game

  #when initialized, set up p1 & p2
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current_player = @p1
  end
  
  #--GAME START
  def start
    @p1.lives = 3
    @p2.lives = 3
    puts "------ Let the game begin ------"
    new_turn
  end
  
  #get_question
  def new_turn
    puts "================================"
    puts "- #{@current_player.name} Ready -"
    question = Question.new
    result = question.ask
    if !result
      @current_player.lose_life
    end
    if @current_player.dead?
      end_game
    else
      switch_turn
    end
  end

  #@incorrect || correct, switch players, new turn
  def switch_turn
    @current_player = @p1 == @current_player ? @p2 : @p1
    new_turn
  end

  def end_game
    puts "#{@current_player.name} is dead..."
    puts "================================="
    puts "Play again? (y/n)"

  end

end
  