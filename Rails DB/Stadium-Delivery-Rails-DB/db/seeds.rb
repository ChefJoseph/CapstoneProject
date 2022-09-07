puts "seeding"
User.first_or_create( 
    email: 'joe@gmail.com',
    password: 'joejoe',
    password_confirmation: 'joejoe')

Product.create!(category:"Food", product_name: "Hot dog", product_image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Hot_dog_with_mustard.png/1280px-Hot_dog_with_mustard.png", description: "", price: 8.00)
Product.create!(category:"Food", product_name: "Hamburger", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Food", product_name: "Pizza", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Food", product_name: "Corn dog", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Food", product_name: "Nachos", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Food", product_name: "Chicken sandy", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Food", product_name: "Salad", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Food", product_name: "Chicken Tendy", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Food", product_name: "Brisket Sandy", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Food", product_name: "Wings", product_image_url: "", description: "", price: 8.00)

Product.create!(category:"Drink", product_name: "Beer", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Drink", product_name: "Wine", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Drink", product_name: "Soda", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Drink", product_name: "Cocktail", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Drink", product_name: "Water", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Drink", product_name: "Juice", product_image_url: "", description: "", price: 8.00)

Product.create!(category:"Snack", product_name: "Fries", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Snack", product_name: "Garlic fries", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Snack", product_name: "Nachos", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Snack", product_name: "Onion rings", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Snack", product_name: "Cotton candy", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Snack", product_name: "Peanuts", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Snack", product_name: "Popcorn", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Snack", product_name: "Cookies", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Snack", product_name: "Ice cream", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Snack", product_name: "Milkshake", product_image_url: "", description: "", price: 8.00)

Product.create!(category:"Merch", product_name: "Jersey", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Merch", product_name: "Shirt", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Merch", product_name: "Cap", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Merch", product_name: "Sweater", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Merch", product_name: "Accessories", product_image_url: "", description: "", price: 8.00)
Product.create!(category:"Merch", product_name: "Memorabilia", product_image_url: "", description: "", price: 8.00)



puts "done seeding"