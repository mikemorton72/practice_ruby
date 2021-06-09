
class Store_Item
  attr_accessor :uid, :description, :price, :category #this can substitute for the two commands below.c
  # attr_reader :uid, :description, :price, :category
  # attr_writer :uid, :description, :price, :category

  def initialize(input_options)
    @uid = input_options[:uid]
    @description = input_options[:description]
    @category = input_options[:category]
    @price = input_options[:price]
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
