json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :user_id, :category_id, :tag_list
  json.url post_url(post, format: :json)
end
