require './engine'

script = ['-', ['-', 54, 3, 9], 2, ['-', 3, 4]]

engine = Engine.new
result = engine.eval(script)

puts "subtract_test:#{result == 41}"
