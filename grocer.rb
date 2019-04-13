def consolidate_cart(cart)
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


def apply_coupons(cart, coupons)
  # code here
  coupons.each do |coupon_hash| 
    item = coupon_hash[:item]
    if cart.has_key?(item)
      original_qty = cart[item][:count]
      coupon_qty = original_qty / coupon_hash[:num]
      coupon_applied = original_qty % coupon_hash[:num]
        if coupon_qty > 0 
          coupon_applied = cart[item][:count]
          cart["#{item} W/COUPON"] = {
            :price=> coupon_hash[:cost],
            :clearance=> cart[item][:clearance],
            :count=> coupon_qty }
        end
    end
  end
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
