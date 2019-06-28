puts "enter first number "
first_number = gets

puts "enter second number"
second_number = gets

first_number = first_number.to_i
second_number = second_number.to_i

first_number > second_number ? second_number,first_number=first_number,second_number :

#if first_number > second_number
#  second_number,first_number=first_number,second_number
#end

#puts "mdkajsdlkas #{Integer.sqrt(first_number)}"
#puts Integer.sqrt(second_number)

count=0
flag=false
a=[]
for i in first_number..second_number
  for j in 2..Integer.sqrt(i)
    if (i == 0 || i == 1)
      flag=true
      next
    end
    if ((i % j) == 0)
      flag=true
      break
    end
  end
  if flag == false
    count+=1
    a << i
  end
  flag = false
end

#puts count
p a
