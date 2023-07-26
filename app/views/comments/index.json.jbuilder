json.array!(@comments) do |comment|
  json.extract! comment, :id, :author, :description, :post_id
  json.url post_comment_url(post_id: @post.id, id: comment.id, format: :json)
end
