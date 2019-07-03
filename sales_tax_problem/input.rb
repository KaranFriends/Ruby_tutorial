load "product.rb"
load "calculate_tax.rb"

class Input < Calculate

  @@input = {}

  include Product_store
  def initialize
    # puts "enter number of items"
    # number_of_item = gets
    input = IO.readlines("file_input.txt")
    input = input.map{ |i| create_instance(i.chomp)}
    # p input
    # input = []
    (0...input.length).each do |i|
      # input[i] = create_instance(gets.chomp)
      # p input[i]
      # input[i].chomp
      input[i].update_tax_and_price
    end
    @@input = { self.object_id => input }
  end

  def self.new
    obj = super
    @@input[obj.object_id]
  end
end
