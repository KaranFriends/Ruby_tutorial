puts "enter string"

input_string = gets().chomp
input_string = input_string.split('')

h = {}



input_string.each { |ee| h[ee]=h[ee] ? h[ee] + 1 : 1}
  #  h[ee] ||= 0
  #  h[ee] += 1
  #p ee
#  h[ee]=h[ee] ? h[ee] + 1 : 1
=begin
  if h[ee]
    h[ee] = h[ee] + 1
  else
    h[ee] =  1
  end
=end
#end

# h.each {|n| p n}
p h
