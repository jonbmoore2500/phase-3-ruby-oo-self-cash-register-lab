
class CashRegister
    attr_accessor :discount, :total, :items, :last_trans
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
        @last_trans
    end
    def total
        @total
    end
    def add_item(title, price, quantity = 1)
        @total += (price * quantity)
        @items.concat([title] * quantity)
        @last_trans = price * quantity
    end
    def apply_discount
        if @discount != 0 then
            @total -= ((@total * @discount)/100)
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end
    def void_last_transaction
            @total -= @last_trans 
    end
end