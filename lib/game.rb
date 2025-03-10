class Game
  def initialize
    @computer = Computer.new
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
    done = false

    if player_guess.eql?(@computer.code)
      puts "You win!"
      done = win
    else
      clue = calc(player_guess)
      puts clue.join
    end

    return done
  end

  def computer_round(code)
    done = false
    computer_guess = @computer.get_guess

    if computer_guess.eql?(code)
      puts "You win!"
      done = win
    else
      clue = calc(computer_guess)
      puts clue.join
    end

    return done
  end

  def calc(guess, pcode="")
    clue = []
    guess_chars = guess.chars
    code_chars = pcode.eql?("") ? @computer.code.chars : pcode

    guess_chars.each_with_index do |ch, idx|
      if ch.eql?(code_chars[idx])
        clue << @correct
      elsif code_chars.include?(ch)
        clue << @almost
      else
        clue << "-"
      end
    end

    return clue
  end
end