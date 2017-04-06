# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Category.where(title: 'Dystopian').first_or_create!
c2 = Category.where(title: 'Fiction').first_or_create!
c3 = Category.where(title: 'Classic').first_or_create!
c4 = Category.where(title: 'Fantasy').first_or_create!
c5 = Category.where(title: 'Fictional Biography').first_or_create!
c6 = Category.where(title: 'Short Story').first_or_create!
c7 = Category.where(title: 'Science Fiction').first_or_create!


Product.where(title: '1984').first_or_create!(
    author: 'George Orwell', rating: '5').categories << [c1, c2, c3]
Product.where(title: 'Hamlet').first_or_create!(
    author: 'William Shakespeare (Shakespeare or not Shakespeare that is the question!)', rating: '5').categories << c3
Product.where(title: 'The Glass Bead Game').first_or_create!(
    author: 'Hermann Hesse', rating: '5+').categories << [c1, c4, c5]
Product.where(title: 'The Immortal').first_or_create!(
    author: 'Jorge Luis Borges', rating: 'BEYOUND IMAGINATION').categories << [c2, c6]
Product.where(title: 'The Time Machine').first_or_create!(
    author: 'H. G. Wells', rating: '5').categories << [c2, c7]
Product.where(title: 'Brave New World').first_or_create!(
    author: 'Aldous Huxley', rating: '4').categories << [c1, c2, c7]