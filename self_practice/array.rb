#https://www.digitalocean.com/community/tutorials/how-to-use-array-methods-in-ruby

sharks = ["Tiger", "Great White", "Hammerhead", "Angel"]
p sharks[0]    # "Tiger"
p sharks[-1]    # "Great White"
p sharks[-2]   # "Angel"
p sharks[-3]   # "Angel"
p sharks[-4]   # "Angel"
p sharks[-5]   # "Angel"
p ""
p sharks.first   # "Tiger"
p sharks.last    # "Angel"
p ""

p sharks.fetch(0,"nothing")
p sharks.fetch(7,"nothing") #setting default value for out of bound exception



p sharks

p sharks[1,3]       #same
p sharks.slice(1,4) #same

p sharks.take(2)   # ["Tiger", "Great White"]

p sharks.sample
p sharks.sample(3)

p sharks.include? "Tiger"      # true
p ["a", "b", "c"].include? 2   # false

sharks = ["Hammerhead", "Great White", "Tiger", "Whale"]
result = nil
sharks.each do |shark|
  if shark.include? "a"   #find first occurrence of a
    result = shark
    break
  end
end
p result

sharks = ["Hammerhead", "Great White", "Tiger", "Whale"]
result = sharks.find {|item| item.include?("a")}
print result

sharks = ["Hammerhead", "Great White", "Tiger", "Whale"]
result = sharks.find {|item| item.include?("a")}
#print result
sharks.each do |item|
  if item.include?("a")
    p item
    break
  end
end

sharks = ["Hammerhead", "Great White", "Tiger", "Whale"]
results = sharks.select {|item| item.include?("a")}
print results
#["Hammerhead", "Great White", "Whale"]

sharks = ["Hammerhead", "Great White", "Tiger", "Whale"]
results = sharks.reject {|item| item.include?("a")}
print results
#["Tiger"]

sharks = ["Angel", "Great White", "Hammerhead", "Tiger"]
reversed_sharks = sharks.reverse
print reversed_sharks
#["Tiger", "Hammerhead", "Great White", "Angel"]

sharks = ["Tiger", "Great White", "Hammerhead", "Angel"]
sorted_sharks = sharks.sort
print sorted_sharks
#["Angel", "Great White", "Hammerhead", "Tiger"]

p ""
e=[4,3,2,1,5,6,7,8]
e_sorted = e.sort
p e_sorted

e_sorted = e.sort{|a,b| a <=> b }
print e_sorted

e_sorted = e.sort{|a,b| a <=> b }
print e_sorted


h={"name" => 1, "no" => 0}
p h["name"]
h={:name => 1, :no => 0}
p h[:name]
