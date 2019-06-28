require 'csv'

input_file = CSV.read("123.csv","r+")

#print input_file
=begin
sum = []
for i in 0...input_file.size
  sum[i] = 0
end
##puts input_file[0][0]
puts sum
=end
#names = Array.new(input_file.size)
for i in 0...input_file.length
  input_file[i][2] = input_file[i][0].to_i * input_file[i][1].to_i
end

=begin
for i in 0...input_file.size
  for j in 0..1
    sum[i] = sum[i] + input_file[i][j].to_i
  end
end

for i in 0...input_file.size
  input_file[i][2] = sum[i].to_s
end
=end
#print input_file

i = 0

CSV.open("123.csv", "wb") do |csv|
  for i in 0...input_file.size
    csv << input_file[i]
  end
end

#print CSV.open("123.csv")
