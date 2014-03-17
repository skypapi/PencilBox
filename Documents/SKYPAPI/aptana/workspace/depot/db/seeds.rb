# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
#......
Product.create!(
    title: 'Cirrus sr-22', 
    description: %{
        <p> New all composite design</p>
    },
    image_url: 'image1rotate.jpg',
    price: 600000.99
)
Product.create!(
    title: 'Cessna 182T', 
    description: %{
        <p> A pure classic and excellent x/c machine</p>
    },
    image_url: 'image2rotate.jpg',
    price: 500000.99
)
Product.create!(
    title: 'Beaver on floats', 
    description: %{
        <p> Excellent for your camping and wilderness business</p>
    },
    image_url: 'image3rotate.jpg',
    price: 1500000.99
)

#......