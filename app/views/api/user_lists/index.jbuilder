# CURRENT USER LISTS

json.array! @userlists do |userlist|
  json.merge! userlist.attributes
  json.title              userlist.title
  json.restaurants        userlist.restaurants.select(:name).pluck(:name)
  json.restaurant_checked userlist.restaurant_lists.select(:checked, :id).pluck(:checked, :id)
end
