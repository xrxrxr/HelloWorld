# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db=>seed (or created alongside the db with db=>setup).
#
# Examples=>
#
#   cities = City.create([{ name=> 'Chicago' }, { name=> 'Copenhagen' }])
#   Mayor.create(name=> 'Emanuel', city=> cities.first)
User.delete_all
Product.delete_all

user = User.new
user.fname = "Tyler"
user.lname = "Stone"
user.username = "a"
user.password = "a"
user.password_confirmation = "a"
user.save

user = User.new
user.fname = "First"
user.lname = "Last"
user.username = "one"
user.password = "a"
user.password_confirmation = "a"
user.save

user = User.new
user.fname = "first"
user.lname = "last"
user.username = "two"
user.password = "a"
user.password_confirmation = "a"
user.save

user = User.new
user.fname = "second"
user.lname = "last"
user.username = "three"
user.password = "a"
user.password_confirmation = "a"
user.save

#-------------------------------------------

product = Product.new
product.title = "Pone"
product.description = ""
product.price = 5
product.category = "something"
product.seller_id = 1
product.save

product = Product.new
product.title = "Ptwo"
product.description = ""
product.price = 50
product.category = "something"
product.seller_id = 1
product.save

product = Product.new
product.title = "Pthree"
product.description = ""
product.price = 500
product.category = "something"
product.seller_id = 2
product.save

product = Product.new
product.title = "Pfour"
product.description = "a thing"
product.price = 5000
product.category = "something"
product.seller_id = 3
product.save


#Product.create!([{:title=> 'Pone'},{:description=> ''},{:price=> 5},{:category=> 'product'},{:seller_id=> 1}])
#Product.create!([{:title=> 'Ptwo'},{:description=> 'a desc'},{:price=> 50},{:category=> 'product'},{:seller_id=> 1}])
#Product.create!([{:title=> 'Pthree'},{:description=> ''},{:price=> 500},{:category=> 'thingie'},{:seller_id=> 2}])
#Product.create!([{:title=> 'Pfour'},{:description=> ''},{:price=> 5000},{:category=> 'wut'},{:seller_id=> 3}])