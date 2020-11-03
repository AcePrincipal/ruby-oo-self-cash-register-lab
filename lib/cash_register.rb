class CashRegister
    attr_accessor :total, :discount, :items
    
    def initialize(discount = 0)
        @total = 0 
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        quantity.times(self.items << title)

        self.total += price*quantity 
    end

    def apply_discount
        if self.discount == 0
            return "There is no discount to apply."
        end
        
        self.total = (self.total - (self.total*(self.discount/100))).to_i
        return "After the discount, the total comes to $#{self.total}."
    end

    def items
        self.items 
    end

    def void_last_transaction
        li = self.item.pop
        total -= li 
end
