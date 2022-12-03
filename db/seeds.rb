puts "🌱 Seeding spices..."

Mylist.create(name: "Breath of the Wild")
Mylist.create(name: "Final Fantasy VII")
Mylist.create(name: "Mario Kart")


Mycategory.create(name: "serie",mylist_id: 1)
Mycategory.create(name: "movie",mylist_id: 2)
Mycategory.create(name: "english",mylist_id: 3)


My_shopping.create(name: "Breath of the Wild")
My_shopping.create(name: "Final Fantasy VII")
My_shopping.create(name: "Mario Kart")
My_shopping.create(name: "Make up buy")

puts "✅ Done seeding!"
