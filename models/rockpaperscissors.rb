class Rockpaperscissor

  def initialize(string1, string2)
    @string1 = string1
    @string2 = string2
  end

  def result
    if @string1 == "rock" &&
       @string2 == "scissors"
      return "Player one wins by playing rock!"


    elsif @string1 == "paper" &&
      @string2 == "rock"
      return "Player one wins by playing paper!"


    elsif @string1 == "scissors" &&
      @string2 == "paper"
      return "Player one wins by playing scissors!"


    elsif @string1 == "rock" &&
      @string2 == "paper"
      return "Player two wins by playing paper!"


    elsif @string1 == "paper" &&
      @string2 == "scissors"
      return "Player two wins by playing scissors!"


    elsif @string1 == "scissors" &&
      @string2 == "rock"
      return "Player two wins by playing rock!"


    elsif @string1 == "rock" &&
      @string2 == "rock"
      return "Draw!"


    elsif @string1 == "paper" &&
      @string2 == "paper"
      return "Draw!"


    elsif @string1 == "scissors" &&
      @string2 == "scissors"
      return "Draw!"
    end

  end

end
