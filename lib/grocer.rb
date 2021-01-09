require 'pry'
def find_item_by_name_in_collection(name, collection)
  
  collection.each do |item|
    item.each do |k, v|
      if name == item[k]
        return item
      end
    end
  end
  return
end

def consolidate_cart(cart)
 index = 0
 new_cart = []
  
   cart.each do |item|
     current_item = find_item_by_name_in_collection(item[:item], new_cart)
     if current_item != nil
       new_cart_index = 0
       new_cart.each do |new_cart_item|
         if new_cart_item[:item] == current_item[:item]
           new_cart_item[:count] += 1
         end
         new_cart_index += 1
       end
     else
       item[:count] = 1
       new_cart << item
     end
     index += 1
   end
   new_cart
end


  