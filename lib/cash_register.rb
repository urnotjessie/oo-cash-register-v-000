class CashRegister

    attr_accessor :total, :discount

    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
    end

    def apply_discount
        if @discount != 0
            @total -= @discount * 10
            "After the discount, the total comes to $#{@total -= @discount}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
    end
end
