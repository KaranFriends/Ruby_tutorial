module Product_store
  class Product

    def initialize(name,price,tax,quantity,imported)
      @name=name
      @price=price
      @tax=tax
      @imported=imported
      @quantity = quantity
      @sales_tax=0
    end

    def update_tax_and_price
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
end
