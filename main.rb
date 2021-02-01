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