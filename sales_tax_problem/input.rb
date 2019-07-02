load "product.rb"
load "calculate_tax.rb"

class Input < Calculate

  @@input = {}

  include Product_store
  def initialize
    puts "enter number of items"
    number_of_item = gets
    input = []
    (0...number_of_item.to_i).each do |i|
      input[i] = create_instance(gets.chomp)
      # p input[i]
      input[i].update_tax_and_price
    end
    @@input = { self.object_id => input }
  end

  def self.new
    obj = super
    @@input[obj.object_id]
  end
end
