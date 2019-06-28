puts "enter array"
input_array = gets.split(" ")

#p input_array
#p input_array[1]

p input_array.map { |e| e.to_i != 0 ? (e.to_i)*2 : e }

=begin
class go
def initialize ui
@iu = ui
end
end
=end
