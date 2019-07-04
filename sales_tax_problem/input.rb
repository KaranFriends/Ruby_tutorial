load "product.rb"
load "calculate_tax.rb"
load "input_checker.rb"

class Input < Calculate

  @@input = {}

  include Product_store
  include Input_checker

  def initialize
    # puts "enter number of items"
    # number_of_item = gets
    input = IO.readlines("file_input.txt")
    input = input.map{|i| i.chomp}

    input.each do |i|
      begin
        if(validity_checker?(i))
          create_instance(i)
        else
          raise "Error"
        end
      rescue
          p "error in line #{ input.find_index(i) + 1}"
          p "you have entered wrong format of string"
          p "enter in following format"
          p "quantity-name_of_product-at-price"
          # retry
          input.delete(i)
        end
      end

    # input = []
    (0...input.length).each do |i|
      input[i] = create_instance(input[i].chomp)
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
