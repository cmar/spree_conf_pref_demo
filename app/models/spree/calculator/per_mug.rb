module Spree
  class Calculator::PerMug < Calculator
    preference :per_mug, :decimal, :default => 0

    def self.description
      "Per Mug Discount"
    end

    def compute(order)
      number_of_mugs = order.line_items.inject(0) do |sum, line_item|
        sum + (line_item.variant.name.match(/Mug/) ? line_item.quantity : 0)
      end

     self.preferred_per_mug * number_of_mugs
    end
  end
end
