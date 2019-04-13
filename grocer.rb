def consolidate_cart(cart)
  hash = {}
  cart.each do |item_hash|
    item_hash.each do |name, price_hash|
      if hash[name].nil?
        hash[name] = price_hash.merge({:count => 1})
      else
        hash[name][:count] += 1
      end
    end
  end
  hash
end

=begin
def consolidate_cart(cart: [])
  # code here
  grocery_hash = {}
  
  cart.each do |grocery|
    grocery.each do |product, value|
      if grocery_hash.has_key?(product)
        grocery_hash[product][:count] += 1 
        
      else
        grocery_hash[product] = value
        grocery_hash[product][:count] = 1
      end
    end
  end
  grocery_hash
end
=end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
