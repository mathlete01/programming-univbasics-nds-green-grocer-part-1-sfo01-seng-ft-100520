require 'pry'

def find_item_by_name_in_collection(name, collection)
  i = 0
  while i < collection.length
    if collection[i][:item] == name
      return collection[i]
    end
    i += 1
  end
end

=begin
def consolidate_cart(cart)
  new_cart = []
  counter = 0
  while counter < cart.length
    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
    if new_cart_item != nil
      new_cart_item[:count] += 1
    else
      new_cart_item = {
        :item => cart[counter][:item],
        :price => cart[counter][:price],
        :clearance => cart[counter][:clearance],
        :count => 1
      }
      new_cart << new_cart_item
    end
    counter += 1
  end
  new_cart
end
=end

def consolidate_cart(cart)
  newCart = []
  i = 0
  while counter < cart.length
    new_cart_item = find_item_by_name_in_collection(cart[i][:item], newCart)
    if new_cart_item != nil
      new_cart_item[:count] += 1
    else
      new_cart_item = {
        :item => cart[i][:item],
        :price => cart[i][:price],
        :clearance => cart[i][:clearance],
        :count => 1
      }
      newCart << new_cart_item
    end
    i += 1
  end
  newCart
end

=begin
def consolidate_cart(cart)
  i = 0
  newCart = []
  while i < cart.length
    currentName = cart[i][:item]
    eval = find_item_by_name_in_collection(currentName,newCart)
    if eval != nil
      newCart[i][:count] += 1
    else
      newCart.push(cart[i])
      newCart[i][:count] = 1
    end
  i += 1
  end
  newCart
end
=end
