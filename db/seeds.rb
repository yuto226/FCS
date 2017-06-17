# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
for i in 1..6 do
Product.create(id:i,name:"回復薬",price:120+i,category:'',option:"薬草とアオキノコです。\n王道です。")
end

for i in 7..12 do
Product.create(id:i,name:"ホットドリンク",price:120+i,category:'',option:"寒さもへっちゃらです。\n辛いです。")
end

for i in 13..18 do
Product.create(id:i,name:"元気ドリンコ",price:120+i,category:'',option:"スタミナが増えた気がします。\n実は薄味")
end

for i in 19..24 do
Product.create(id:i,name:"狂走薬",price:120+i,category:'',option:"たくさん走れます。\n美味しいです。")
end

for i in 1..24 do
OrderStatus.create(id:i,order_status:"false",amount:i,product_id:i,table_number_id:i)
end
for i in 1..24 do
TableNumber.create(id:i,table_number:i)
end
#TableNumber.create(or)
