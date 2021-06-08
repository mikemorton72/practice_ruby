class Store_Inventory
  def initialize()
    @items = []
  end
  def items
    return @items
  end
  def add_item(item_object)
    @items << item_object
  end
  def modify_item(uid)
    for item in @items
      if item.uid == uid
        p "Item Description: "
        item.description = gets.chomp
        p "Item Category: "
        item.category = gets.chomp
        p "Item Price: "
        item.price = gets.chomp
      end
    end
  end
  def delete_item(uid)
    for item in @items
      if item.uid == uid
        @items.delete(item)
      end
    end
  end
end

class Store_Item
  def initialize(uid,description, category, price)
    @uid = uid.to_s
    @description = description
    @category = category
    @price = price
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
  def description=(description)
    @description = description
  end
  def category=(category)
    @category = category
  end
  def price=(price)
    @price = price
  end
end

store_inventory = Store_Inventory.new
store_inventory.add_item(Store_Item.new("1","coffee", "beverage", 3.00))
store_inventory.add_item(Store_Item.new("2","tea", "beverage", 2.50))

while true
  p "[C]reate [R]ead [U]pdate [D]elete [Q]uit"
  user_input = gets.chomp.upcase
  if user_input == "Q"
    break
  elsif user_input == "C"
    p "Item ID: "
    uid = gets.chomp
    p "Item Description: "
    description = gets.chomp
    p "Item Category: "
    category = gets.chomp
    p "Item Price: "
    price = gets.chomp
    store_inventory.add_item(Store_Item.new(uid,description,category,price))
  elsif user_input == "U"
    p "Please enter item ID: "
    uid = gets.chomp
    store_inventory.modify_item(uid)
  elsif user_input == "D"
    p "Please enter item ID: "
    uid = gets.chomp
    store_inventory.delete_item(uid)
  end

  p store_inventory
end