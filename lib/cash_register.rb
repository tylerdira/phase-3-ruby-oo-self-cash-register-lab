
class CashRegister

    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times do
            @items << title
        end
    end

    def apply_discount
        if discount > 0
            percent_discount = (100 - self.discount.to_f) / 100
            self.total = (percent_discount * self.total).to_i
            "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end


    
end