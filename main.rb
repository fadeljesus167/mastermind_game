require_relative "lib/game"
require_relative "lib/computer"

puts "1 - Computer Code\n2 - Player Code"

ans = gets.chomp.to_i

if ans.eql?(1)
  game = Game.new
  puts game.inspect

  6.times do
    result = game.round
    break if result.eql?(true)
  end
else
  game = Game.new
  puts "Enter code: "
  code = gets.chomp

  6.times do
    result = game.computer_round(code)
    break if result.eql?(true)
  end
end
