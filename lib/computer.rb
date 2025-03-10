class Computer
  attr_reader :code
  
  def initialize
    @code = generate_code
  end

  def generate_code
    colors = {b: 'blue', r: 'red', g: 'green', y: 'yellow', m: 'magenta', w: 'white'}
    code = ""

    4.times do
      code << colors.keys.map(&:to_s).sample
    end

    return code
  end

  def get_guess
    # search a strategy to implement
    code = "brgymw".chars.sample + "brgymw".chars.sample + "brgymw".chars.sample + "brgymw".chars.sample

    return code
  end
end