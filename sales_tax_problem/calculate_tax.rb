load "product.rb"

class Calculate
  include Product_store

  def create_instance(result)
    quantity = result.split(" ").first.to_i
    price = result.split(" ").last.to_f
    imported = result.include?("imported")# ? true : false
    # sales_tax = imported ? result.include("imported") || result.include("pill") || result.include("book") ? 5 :
    item = ["chocolate","pill","book"]
    tax = false
    # p result.split("at ").first.split(" ").last
    if item.include? result.split("at ").first.split(" ").last
      tax = imported ? 5 : 0
    elsif
      tax = imported ? 15 : 10
    end

    Product.new(result,price,tax,quantity,imported )
  end
end
