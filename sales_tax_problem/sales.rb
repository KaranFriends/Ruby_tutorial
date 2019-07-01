class Product
  def initialize(name,price,tax,quantity,imported)
    @name=name
    @price=price
    @tax=tax
    @imported=imported
    @quantity = quantity
    @sales_tax=0
  end
  def update
    @sales_tax = @tax * @price  / 100
    @price += @sales_tax
    @price *= @quantity
  end
  def ret_name
      @name
  end
  def ret_price
      @price
  end
  def ret_tax
      @sales_tax
  end

end

def set(result)
  quantity = result.split(" ").first.to_i
  price = result.split(" ").last.to_f
  imported = result.include?("imported")# ? true : false
  # sales_tax = imported ? result.include("imported") || result.include("pill") || result.include("book") ? 5 :
  tax =result.include?("chocolate") || result.include?("pill") || result.include?("book") ? imported ? 5 : 0 : imported ? 15 : 10
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
