class CashRegister

    attr_accessor :total, :discount

    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
    end

    def apply_discount
        if @discount != 0
            self.total = self.total * (1 - self.discount * 0.01)
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items

    end

    
    def void_last_transaction
    end
end
