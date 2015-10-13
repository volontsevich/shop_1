# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Product.create! id: 1, name: "Fortunella Margarita", price: 6.95, available: true, descr: "Кумкват Маргарита является самым распространенным кумкватом в мире."
Product.create! id: 2, name: "Adenium obesum", price: 2.17, available: true, descr: "Небольшой размер, медленный рост и раннее, обильное цветение делает Адениум идеальным растением для содержания в квартире."
Product.create! id: 3, name: "Amorphophallus bulbiter", price: 2.61, available: true, descr: "Одно из самых оригинальных и противоречивых комнатных растений: необыкновенно красивый крупный цветок, великолепный огромный лист - и довольно неприятный аромат."
Product.create! id: 4, name: "Bergenia crassitolia", price: 2.39, available: true, descr: "Эффектное вечнозеленое зимостойкое растение с красивыми и очень полезными листьями."
Product.create! id: 5, name: "Haemanthus albitlos", price: 3.48, available: true, descr: "Самый популярный из вечнозеленых гемантусов. Красивые листья, продолжительное цветение, яркие красные ягоды - отличный выбор для тенистых садов, веранд, балконов."
Product.create! id: 6, name: "Gynura aurantiaca", price: 1.74, available: true, descr: "С первого взгляда кажется, что это не живое растение, а яркая и мягкая детская игрушка. На ярком солнце растение буквально излучает фиолетовый свет и кажется выходцем с другой планеты."
Product.create! id: 7, name: "Punica granatum nana", price: 3.26, available: true, descr: "Небольшое растение, высотой не более 1 метра, с мелкими зелеными листьями, очень красивыми крупными ярко-красными цветами и небольшими красными плодами. Эффектно смотрится выращенным в форме штамбового деревца."
Product.create! id: 8, name: "Callistemon", price: 3.48, available: true, descr: "Привлекает внимание своими необычными цветами: многочисленные цветы собраны в колосовидное соцветие, лепестки почти отсутствуют, но ярко-красные с желтым кончиком тычинки не оставят Вас равнодушным."

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

