# maybe not a class....
# class Store_Inventory
#   def initialize()
#     @items = []
#   end
#   def items
#     return @items
#   end
#   def add_item(item_object)
#     @items << item_object
#   end
#   def modify_item(uid)
#     for item in @items
#       if item.uid == uid
#         p "Item Description: "
#         item.description = gets.chomp
#         p "Item Category: "
#         item.category = gets.chomp
#         p "Item Price: "
#         item.price = gets.chomp
#       end
#     end
#   end
#   def delete_item(uid)
#     for item in @items
#       if item.uid == uid
#         @items.delete(item)
#       end
#     end
#   end
# end

class Store_Item
  def initialize(input_uid, input_description, input_category, input_price)
    @uid = input_uid
    @description = input_description
    @category = input_category
    @price = input_price
  end

  def uid
    return @uid
  end

  def description
    return @description
  end

  def category
    return @category
  end

  def price
    return @price
  end

  def uid=(input_uid)
    @uid = input_uid
  end

  def description=(input_description)
    @description = input_description
  end

  def category=(input_category)
    @category = input_category
  end

  def price=(input_price)
    @price = input_price
  end

  def info
    "UID: #{uid}, Description: #{description}, Category: #{category}, Price: #{price}"
  end
end


item1 = Store_Item.new("1", "coffee", "beverage", 3.00)
p item1.info
p "changing price to 2"
item1.price = 2
p item1.info
p "changing description to water"
item1.description = "water"
p item1.info
p "changing category to free stuff"
item1.category = "free stuff"
p item1.info
p "changing UID to 99"
item1.uid = 99
p item1.info


item2 = Store_Item.new("2", "tea", "beverage", 2.50)
#p item2.info 





# while true
#   p "[C]reate [R]ead [U]pdate [D]elete [Q]uit"
#   user_input = gets.chomp.upcase
#   if user_input == "Q"
#     break
#   elsif user_input == "C"
#     p "Item ID: "
#     uid = gets.chomp
#     p "Item Description: "
#     description = gets.chomp
#     p "Item Category: "
#     category = gets.chomp
#     p "Item Price: "
#     price = gets.chomp
#     store_inventory.add_item(Store_Item.new(uid,description,category,price))
#   elsif user_input == "U"
#     p "Please enter item ID: "
#     uid = gets.chomp
#     store_inventory.modify_item(uid)
#   elsif user_input == "D"
#     p "Please enter item ID: "
#     uid = gets.chomp
#     store_inventory.delete_item(uid)
#   end

#   p store_inventory
# end