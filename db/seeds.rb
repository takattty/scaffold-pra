# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |n|
  b = Blog.create(title: "blog #{n}")
  Random.rand(1..15).times do |_n|
  # blogの関連として作成したEntryを追加する
    b.entries << Entry.create(name: "entry #{_n}", body: "あ" * _n)
  end
end