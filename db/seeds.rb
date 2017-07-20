# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
  specification
  name = data seed
  function = seed値を与える。。
  note = bundle exc rails db:seedでトリガー。
  date = 2017/6/20
  author = Yuto Suzuki
  History = V1.00/V1.00
  input = none
  output = seed値。
  end of specification
=end

Product.create(id:1,name:"回復薬",price:120,category:'飲み物(回復)',option:"薬草とアオキノコです。\n王道です。")
Product.create(id:2,name:"ホットドリンク",price:100,category:'飲み物(補助薬)',option:"寒さもへっちゃらです。\n辛いです。")
Product.create(id:3,name:"元気ドリンコ",price:150,category:'飲み物(補助薬)',option:"スタミナが増えます。\n実は薄味です。")
Product.create(id:4,name:"狂走薬",price:200,category:'飲み物(補助薬)',option:"たくさん走れます。\n美味しいです。")
Product.create(id:5,name:"回復薬G",price:200,category:'飲み物(回復)',option:"めっちゃ回復します。\n人気です。")
Product.create(id:6,name:"こんがり肉",price:300,category:'食べ物(スタミナ)',option:"狩りのおともです。\n上手に焼けました。")
Product.create(id:7,name:"秘薬",price:580,category:'食べ物(ステータス最大値増)',option:"伝説の秘薬。\nとてもまずい。")
Product.create(id:99,name:"定義エラー",price:580,category:'定義エラーです。注文状況にエラーが存在している可能性があります。',option:"null")

for i in 1..60 do
OrderStatus.create(id:i,order_status:"false",amount:rand(1..4),product_id:rand(1..7),table_number_id:rand(1..8))
end
for i in 1..8 do
TableNumber.create(id:i,table_number:i)
end
#TableNumber.create(or)
