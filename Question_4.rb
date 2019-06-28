puts "enter first array"
first_array = gets.split(" ")
#first_array=first_array.chomp

puts "enter second array"
second_array = gets.split(" ")
#second_array=second_array.chomp
#p first_array
#p second_array
answer = []

#len = first_array.length > second_array.length ? first_array.length : second_array.length

for i in 0...first_array.length > second_array.length ? first_array.length : second_array.length
  answer[i] = (first_array[i] || "").to_s + (second_array[i] || "").to_s
end

p answer
