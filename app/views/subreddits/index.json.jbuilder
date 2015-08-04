json.array!(@subreddits) do |subreddit|
  json.extract! subreddit, :id
  json.url subreddit_url(subreddit, format: :json)
end
