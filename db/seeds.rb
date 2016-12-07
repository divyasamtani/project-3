
# RESTAURANT NAMES *********************************************************

Restaurant.create({name: 'Black Bear Bar & Grill'})
Restaurant.create({name: 'Barbecue Pit Rib House & Grill'})
Restaurant.create({name: 'Havana Grill'})
Restaurant.create({name: 'Pasta Bella'})
Restaurant.create({name: 'Bernards'})
Restaurant.create({name: 'Montgomery Brewing CO'})
Restaurant.create({name: 'Da Luciano Pizza Pasta & Cater'})
Restaurant.create({name: 'Yemanja Brasil Restaurant'})
Restaurant.create({name: 'Union Station Cafe'})
Restaurant.create({name: 'Aldos Restaurant'})
Restaurant.create({name: 'Restaurant At Little Mill'})
Restaurant.create({name: 'Fly Trap Restaurant'})
Restaurant.create({name: 'Bewiched Deli'})
Restaurant.create({name: 'Biminis Oyster Bar & Seafood'})
Restaurant.create({name: 'Komachi'})
Restaurant.create({name: 'Jaks Grill'})
Restaurant.create({name: 'Washington House'})
Restaurant.create({name: 'Pour House'})
Restaurant.create({name: 'Humphreys'})
Restaurant.create({name: 'Andys Sandwiches & Smoothies'})
Restaurant.create({name: 'Elis American Grille'})
Restaurant.create({name: 'Chicago Bagels Authority'})
Restaurant.create({name: 'Murphys Seafood Bar & Grill'})
Restaurant.create({name: 'Edens Lounge'})
Restaurant.create({name: 'Chopstix Chinese Restaurant'})
Restaurant.create({name: 'Frankie Toccos Pizzeria'})
Restaurant.create({name: 'Emilios Bistro'})
Restaurant.create({name: 'Sato Japanese Restaurant'})
Restaurant.create({name: 'Main Street Restaurant'})
Restaurant.create({name: 'Fortels Pizza Den'})
Restaurant.create({name: 'Pasta Pasta'})
Restaurant.create({name: 'Pizza Daddies'})
Restaurant.create({name: 'Black Mesa Coffee CO'})
Restaurant.create({name: 'Sevilla Restaurant & Bar'})
Restaurant.create({name: 'Oriental Table'})
Restaurant.create({name: 'Vino On The Brick Walk'})
Restaurant.create({name: 'LA Donna Italian Cuisine'})
Restaurant.create({name: 'Calloways'})
Restaurant.create({name: 'Underhills Crossing Restaurant'})
Restaurant.create({name: 'Turf Club'})
Restaurant.create({name: 'Pastries By Ellen'})
Restaurant.create({name: 'Tamayo Restaurant'})
Restaurant.create({name: 'Mezzaluna Restaurant'})
Restaurant.create({name: 'Ember Grille'})
Restaurant.create({name: 'Fiesta Garibaldi'})
Restaurant.create({name: 'Narah Cafe'})
Restaurant.create({name: 'Birches Restaurant'})
Restaurant.create({name: 'Scholz Garden'})
Restaurant.create({name: 'Trinity Grille'})
Restaurant.create({name: 'Trattoria IL Centro'})
Restaurant.create({name: 'Pomodoro Ristorante Italiano'})



# CREATE USERS (ALL FAKER) **************************************************

50.times do
  User.create({
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
  })
end

# CREATE LISTS (CUSTOM DATA + FAKER) **************************************

  ids = User.pluck(:id)

List.create({
    title: 'Top Pizza Spots in Central',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Rooftop bars I Love',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Outdoor Restaurants in HK',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Korean in Kowloon',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'My Fave Indian Restaurants',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Best Thai Food in HK',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'My Favourite Mexican',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Best Places to Get Soup Dumplings',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Vietnamese Favourites',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Amazing Middle Eastern in Central',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Best Healthy Cafes in HK',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Favourite Chinese in Kowloon',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Best Dim Sum Ever!',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Cool Cafes in Sheung Wan',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Great Date Restaurants in Central',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Good Dinner Places for Clients',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Best Brunch Spots in Repulse Bay',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'The Best Ramen Ever',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Beach Cafes in HK',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Best Steak Restaurants',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Where to Brunch in Wan Chai',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'My Outdoor Food Finds',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Best Street Stalls in Kowloon',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Where to Get a Decent Shwarma in HK',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Best French Restaurants',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'My Favourite Japanese Food in HK',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'My Ice Cream List',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Best Mexican Places',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Tapas Restaurants in HK',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Real American Diners in HK',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Restaurants with the Best Views',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Healthy Chinese Food Spots',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Real Good Coffee Bars in Central',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Best Rooftop Restaurants',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Amazing South American Food',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Great Veggie Restaurants',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'The Best Donut Spots',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'My Favourite French Spots',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Yummy Taco Places!',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'My Fave Vegan Restaurants',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Cool Date Night Spots',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Amazing Indian Restaurants',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'My Dessert List!',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Real Korean BBQ Spots',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Best Sandwich Cafes',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Legit Burgers in HK',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'SE Asian Restos',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'My Brunch List',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Best Pizza Places for Kids',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Great Salad Bars',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })

List.create({
    title: 'Mongolian Food in HK',
    description: Faker::Lorem.sentence(3),
    user_id: User.find(ids.sample).id
  })



# JOINT TABLE ASSOCIATIONS ***************************************************

500.times do

# GET RANDOM USER
  ids = User.pluck(:id)
  # returns an array of all the id's in the table
  random_User = User.find(ids.sample)
  # sample gives a random ID from the array and returns a random User

# USER / LIST
  list_ids = List.pluck(:id)
  random_List = List.find(list_ids.sample)

  restaurant_ids = Restaurant.pluck(:id)
  random_Restaurant = Restaurant.find(restaurant_ids.sample)

  rl_params = {
    list_id: random_List.id,
    restaurant_id: random_Restaurant.id,
    checked: Faker::Boolean.boolean
  }

  r = RestaurantList.create(rl_params)

# USER / BOOKMARK
  ul_params = {
    list_id: random_List.id,
    user_id: random_User.id
  }

  b = ListBookmark.create(ul_params)
end


