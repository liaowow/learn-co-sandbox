# cart = [
#   {:item => "PEANUT BUTTER", :price => 3.00, :clearance => true,  :count => 2},
#   {:item => "KALE", :price => 3.00, :clearance => false, :count => 3},
#   {:item => "SOY MILK", :price => 4.50, :clearance => true,  :count => 1}
# ]

# def apply_clearance(cart)
#   # Consult README for inputs and outputs
#   #
#   # REMEMBER: This method **should** update cart
#   new_cart = []
#   cart_index = 0
#   while cart_index < cart.length do
#     if cart[cart_index][:clearance]
#       cart[cart_index][:price] = (cart[cart_index][:price] * 0.8).round(2)
#     end
#     new_cart << cart[cart_index]
#     cart_index += 1
#   end
#   new_cart
# end

# pp apply_clearance(cart)


# cart = 
# [
#   {:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 3},
#   {:item => "KALE",    :price => 3.00, :clearance => false, :count => 1}
# ]

# coupons =
# [
#   {:item => "AVOCADO", :num => 2, :cost => 5.00}
# ]

# def apply_coupons(cart, coupons)
#   arr = []
#   cart_index = 0
#   while cart_index < cart.length do
#     coupon_index = 0
#     while coupon_index < coupons.length do
#       if coupons[coupon_index][:item] == cart[cart_index][:item]
#         #create new hash that includes item with coupon
#         item_w_coupon = {
#           :item => "#{cart[cart_index][:item]} W/COUPON",
#           :price => coupons[coupon_index][:cost] / coupons[coupon_index][:num],
#           :clearance => cart[cart_index][:clearance],
#           :count => coupons[coupon_index][:num]
#         }
#         #add new hash to cart
#         cart << item_w_coupon
#         #remove number of discounted items from original items's count
#         cart[cart_index][:count] = cart[cart_index][:count] - item_w_coupon[:count]
#         ## do we really need this if statement??
#         if coupons[coupon_index][:num] == cart[cart_index][:count]
#           cart[cart_index][:count] = 0
#         end
#       end
#       coupon_index += 1
#     end
#     arr << cart[cart_index]
#     cart_index += 1
#   end
#   arr
# end

# pp apply_coupons(cart, [])

cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
]

def find_item_by_name_in_collection(name, collection)
  index = 0
  while index < collection.length do
    if name == collection[index][:item]
      return collection[index]
    end
    index += 1
  end
end

pp find_item_by_name_in_collection("AVOCADO", cart)

def consolidate_cart(cart)
  #create a new arr
  arr = []
  index = 0
  #loop thru each hash in the cart array
  while index < cart.length do
    arr_index = 0
    while arr_index < arr.length do
      #if current hash does not have count as key AND current hash does not have same item
      if !cart[index][:count] && arr[index][:item] != cart[index][:item]
      #... assign count as key and set value at 1
      cart[index][:count] = 1
      else
      arr[arr_index][:count] += 1
    end
      arr_index += 1
    end
    arr << cart[index]
    index += 1
  end
  arr
end

pp consolidate_cart(cart)

# collection = 
# [
#   { :item => "DOG FOOD" },
#   { :item => "WINE" },
#   { :item => "STRYCHNINE" }
# ]

# def find_item_by_name_in_collection(name, collection)
#   index = 0
#   while index < collection.length do
#     if name == collection[index][:item]
#       return collection[index]
#     end
#     index += 1
#   end
# end

# p find_item_by_name_in_collection("WINE", collection)