# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Product.create! id: 1, name: "Salt", price: 0.19, available: true, descr: "Description 1"
Product.create! id: 2, name: "Sugar", price: 0.29, available: true, descr: "Description 2"
Product.create! id: 3, name: "Species", price: 0.39, available: true, descr: "Description 3"
Product.create! id: 4, name: "Species", price: 0.49, available: true, descr: "Description 4"
Product.create! id: 5, name: "Salt", price: 0.59, available: true, descr: "Description 5"
Product.create! id: 6, name: "Sugar", price: 0.69, available: true, descr: "Description 6"
Product.create! id: 7, name: "Species", price: 0.79, available: true, descr: "Description 7"
Product.create! id: 8, name: "Species", price: 0.89, available: true, descr: "Description 8"

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

Image.delete_all
Image.create! id:1, product_id: 1, path: "1.jpeg", is_main: true
Image.create! id:2, product_id: 2, path: "2.jpeg", is_main: true
Image.create! id:3, product_id: 3, path: "3.jpeg", is_main: true
Image.create! id:4, product_id: 4, path: "4.jpeg", is_main: true
Image.create! id:5, product_id: 5, path: "5.jpeg", is_main: false
Image.create! id:6, product_id: 6, path: "6.jpeg", is_main: true
Image.create! id:7, product_id: 7, path: "7.jpeg", is_main: true
Image.create! id:8, product_id: 8, path: "8.jpeg", is_main: true

