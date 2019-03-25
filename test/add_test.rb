require './engine'

script = ['+', ['+', 3, 9], 2, ['+', 3, 4, 4]]

engine = Engine.new
result = engine.eval(script)

puts "add_test:#{result == 25}"
