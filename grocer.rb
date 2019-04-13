def consolidate_cart(cart:[])
  # code here
  new_hash = {}
  cart.each do|product_hash|
    product_hash.each do |item, item_hash|
      if new_hash.has_key?(item)
        new_hash[item][:count] += 1
      else
        new_hash[item] = item_hash
        new_hash[item][:count] = 1
      end
    end
  end
  new_hash
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
