class Game
  def initialize
    @computer = Computer.new
    @code = @computer.generate_code
    @guess_attempts = 6

    @correct = 8226.chr('utf-8')
    @almost = 176.chr('utf-8')
  end

  def get_guess
    str = "b: 'blue', r: 'red', g: 'green', y: 'yellow', m: 'magenta', w: 'white'"
    puts "Make your guess, options: #{str}"

    return gets.chomp
  end

  def round
    player_guess = get_guess

    if player_guess.eql?(@code)
      puts "You win!"
    else
      puts "You lost!"
    end
  end
end