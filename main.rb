require 'rainbow'

def colorize(text, color)
  puts Rainbow(text).send(color)
end

while true
  print "Write text with a color: "
  input = gets.chomp.split(",")

  colorize(input[0], input[1].strip)
end