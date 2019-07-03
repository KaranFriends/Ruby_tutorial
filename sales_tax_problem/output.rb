load "product.rb"

class Output
  include Product_store
  def initialize(input)
    #p input
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
end
