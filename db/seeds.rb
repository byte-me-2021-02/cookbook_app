
User.create!([
  {name: "jane", email: "jane@jane.com", password: "password"},
  {name: "betsy", email: "betsy@betsy.com", password: "password"},
  {name: "jessica", email: "jessica@jessica.com", password: "password"},
  {name: "danielle", email: "danielle@example.com", password: "password"},
  {name: "karen", email: "karen@example.com", password: "password"}
])


Recipe.create!([
  {chef: "rachel ray", ingredients: "greens etc", directions: "make the salad", prep_time: 10, image_url: nil, title: "chef's salad", user_id: 4},
  {chef: "george washington", ingredients: "sun + axe", directions: "cut down cherry tree", prep_time: 10000, image_url: "", title: "cherries", user_id: 4},
  {chef: "gramma mora", ingredients: "chicken + cheese", directions: "bake them", prep_time: 20, image_url: "something about a burrito", title: "burrito", user_id: 1},
  {chef: "Laura Parsley", ingredients: "Chicken", directions: "Squeeze the chicken", prep_time: 1, image_url: "http://swansonhealthcenter.com/wp-content/uploads/2011/07/Egg.jpg", title: "Raw Eggs", user_id: nil},
  {chef: "Jay Wengrow", ingredients: "Two slices of bread", directions: "Place slices of bread next to each other.", prep_time: 72, image_url: "http://www.phoenixisstrategic.com/wp-content/uploads/2013/05/blog-empty-sandwich.jpg", title: "Empty Sandwich", user_id: nil},
  {chef: "Jean Claude Packsone", ingredients: "Licorice", directions: "Buy licorice from store.", prep_time: 120, image_url: "http://cdn2.bigcommerce.com/server6200/aa739/product_images/uploaded_images/red-licorice.png?t=1398725710", title: "Licorice", user_id: nil},
  {chef: "Mark Richardson", ingredients: "Flour, water, mud.", directions: "Mix flour and water, add mud, bake at 350 degrees for 1 hour.", prep_time: 84, image_url: "http://cdn-image.myrecipes.com/sites/default/files/styles/300x300/public/image/recipes/sl/05/12/mocha-mud-pie-sl-257949-x.jpg?itok=_ChocANl", title: "Mud Pie", user_id: nil},
  {chef: "The Swedish Chef", ingredients: "Flour, water, pepperoni, cheese", directions: "Mix flour and water, add cheese and pepperoni, shape as a heart, bake in oven on self-clean mode.", prep_time: 455, image_url: "http://twopizzapals.weebly.com/uploads/2/3/6/0/23602608/1338890_orig.jpg", title: "Pizza", user_id: nil},
  {chef: "Cornelius Vanderbilt", ingredients: "Corn, cob", directions: "Place corn on the cob, grill for 20 minutes, enjoy!", prep_time: 22, image_url: "http://www.scientificamerican.com/sciam/cache/file/59C0122F-509C-4FEE-99A67FC20C50CEF1.jpg", title: "Corn on the cob", user_id: nil},
  {chef: "Jay Wengrow", ingredients: "quinoa, beans, lettuce", directions: "add the quinoa with all the other ingredients", prep_time: 20, image_url: "https://www.cookingclassy.com/wp-content/uploads/2020/01/quinoa-salad-16.jpg", title: "salad of quinoa", user_id: nil},
  {chef: "", ingredients: "rice", directions: "boil the rice", prep_time: 2, image_url: "", title: "steamed rice", user_id: nil},
  {chef: "", ingredients: "rice + chips", directions: "boil the rice + fry the cips", prep_time: 200, image_url: "", title: "fried rice", user_id: 2},
  {chef: "gordon ramsayyyyy", ingredients: "good fish", directions: "broil it?", prep_time: 300, image_url: "rrrrr", title: "haddock sandwich", user_id: 1},
  {chef: "rachel ray", ingredients: "greens etc", directions: "make the salad", prep_time: 10, image_url: "https://www.wholesomeyum.com/wp-content/uploads/2020/03/wholesomeyum-chef-salad-recipe-4.jpg", title: "chef's salad", user_id: 4},
  {chef: "rachel ray", ingredients: "greens etc", directions: "make the salad", prep_time: 1111, image_url: nil, title: "chef's salad!!!!", user_id: 4}
])
