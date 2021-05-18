def consolidate_cart(cart)
  # code here
  cart_hash = {}
  cart.each do |grocery|
    grocery.each do |item, data|
      if cart_hash[item]
        cart_hash[item][:count] += 1
      else
        cart_hash[item] = data
        cart_hash[item][:count] = 1
      end
    end
  end
  cart_hash
end

def apply_coupons(cart, coupons)
  # code here
  coupons.each do |couponHash|
    apply_single_coupon(cart, couponHash)
  end
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
