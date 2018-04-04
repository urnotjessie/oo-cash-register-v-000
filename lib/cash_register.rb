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
            @total = (1 - @discount * 0.01)
            "After the discount, the total comes to $#{@total -= @discount * 2}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
    end
end
