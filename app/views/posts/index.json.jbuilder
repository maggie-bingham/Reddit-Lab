json.array!(@posts) do |post|
  json.extract! post, :id, :title, :url, :summary, :user_id, :subreddit_id
  json.url post_url(post, format: :json)
end
