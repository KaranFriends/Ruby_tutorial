load product.rb

def set(result)
  quantity = result.split(" ").first.to_i
  price = result.split(" ").last.to_f
  imported = result.include?("imported")# ? true : false
  # sales_tax = imported ? result.include("imported") || result.include("pill") || result.include("book") ? 5 :
  item = ["chocolate","pill","book"]

  if item.inclue? result.split("at").first.split(" ").last
    tax = imported ? 5 : 0
  else if
    tax = imported ? 15 : 10
  end
  # if result.include?("chocolate")
  #   tax = imported ? 5 : 0
  # else if result.include?("pill")
  #   tax = imported ? 5 : 0
  # else if result.include?("book")
  #   tax = imported ? 5 : 0
  #   tax = imported ? 15 : 10
  # else
  # end

  # tax =result.include?("chocolate") || result.include?("pill") || result.include?("book") ? imported ? 5 : 0 : imported ? 15 : 10
  #p tax
  Product.new(result,price,tax,quantity,imported )
end


def take_input
  puts "enter number of items"
  number_of_item = gets
  input = []
  (0...number_of_item.to_i).each do |i|
    input[i] = set(gets.chomp)
    input[i].update
  end
  input
end

def print_output(input)
  price,tax=0,0
  (0...input.length).each do |i|
    price +=input[i].ret_price.round(2)
    tax += input[i].ret_tax.round(2)
    temp = input[i].ret_name.split(" ")
    p temp[0,temp.length-2].join(" ") + " : #{input[i].ret_price.round(2)}"
  end
  p "Sales Taxes: #{tax.round(2)}"
  p "Total: #{price.round(2)}"
end

print_output take_input
