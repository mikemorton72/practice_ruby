
class Store_Item
  def initialize(input_options)
    @uid = input_options[:uid]
    @description = input_options[:description]
    @category = input_options[:category]
    @price = input_options[:price]
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

item1 = Store_Item.new(uid: "1", description: "coffee", category: "beverage", price: 3.00)
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

item2 = Store_Item.new(uid: "2", description: "tea", category: "beverage", price: 2.50)
p item2.info 

inventory = []
