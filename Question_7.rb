puts "enter first array"
input_array = gets.split(" ")

input_array = input_array.map { |e| e.to_i }

p input_array.map { |e| e*2 }
