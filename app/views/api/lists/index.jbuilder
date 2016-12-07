json.array! @lists do |list|
  json.merge! list.attributes
  json.user_email list.user.email
  json.user_name list.user.name
  json.list_restaurants list.restaurants.select(:name, :id).pluck(:name)
  json.restaurant_checked list.restaurant_lists.select(:checked, :id).pluck(:checked, :id)
end
