require "pry"

class GuessingGame

  def initialize(low, high)
    @low = low
    @high = high
  end

  def play
    reset_play
    loop do
      player_guess = obtain_player_guess
      evaluate(player_guess)
      break if player_guess == @number.value
      @guesses -= 1
      if @guesses <= 0
        puts "You are out of guesses. You lose."
        break
      end
    end
  end


  def obtain_player_guess
    puts "You have #{@guesses} remaining."
    loop do
      print "Enter a number between #{@low} and #{@high}: "
      input = gets.chomp
      return input.to_i if input.to_i.to_s == input
      print "Invalid guess. "
    end
  end

  def reset_play
    @number = Number.new(@low, @high)
    @guesses = Math.log2(@high-@low).to_i + 1
  end

  def evaluate(player_guess)
    case player_guess <=> @number.value
    when -1
      puts "Your guess is too low"
    when 1
      puts "Your guess is too high"
    else
      puts "You win!"
    end
  end

end

class Number
  attr_accessor :value
  def initialize(low, high)
    @value = rand(low..high)
  end
end

game = GuessingGame.new(501,1500)
game.play