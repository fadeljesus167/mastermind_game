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
end