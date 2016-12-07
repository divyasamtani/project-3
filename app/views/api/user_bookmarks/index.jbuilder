json.array! @bookmarks do |bookmark|
  json.merge! bookmark.attributes
  json.title              bookmark.title
  json.id                 bookmark.id
  json.user_name          bookmark.user_id
  json.restaurants        bookmark.restaurants.select(:name).pluck(:name)
  json.restaurant_checked bookmark.restaurant_lists.select(:checked, :id).pluck(:checked, :id)
end